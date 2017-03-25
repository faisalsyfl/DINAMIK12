<?php
// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Upgrade helper functions
 *
 * This file is used for special upgrade functions - for example groups and gradebook.
 * These functions must use SQL and database related functions only- no other Moodle API,
 * because it might depend on db structures that are not yet present during upgrade.
 * (Do not use functions from accesslib.php, grades classes or group functions at all!)
 *
 * @package   core_install
 * @category  upgrade
 * @copyright 2007 Petr Skoda (http://skodak.org)
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

/**
 * Returns all non-view and non-temp tables with sane names.
 * Prints list of non-supported tables using $OUTPUT->notification()
 *
 * @return array
 */
function upgrade_mysql_get_supported_tables() {
    global $OUTPUT, $DB;

    $tables = array();
    $patprefix = str_replace('_', '\\_', $DB->get_prefix());
    $pregprefix = preg_quote($DB->get_prefix(), '/');

    $sql = "SHOW FULL TABLES LIKE '$patprefix%'";
    $rs = $DB->get_recordset_sql($sql);
    foreach ($rs as $record) {
        $record = array_change_key_case((array)$record, CASE_LOWER);
        $type = $record['table_type'];
        unset($record['table_type']);
        $fullname = array_shift($record);

        if ($pregprefix === '') {
            $name = $fullname;
        } else {
            $count = null;
            $name = preg_replace("/^$pregprefix/", '', $fullname, -1, $count);
            if ($count !== 1) {
                continue;
            }
        }

        if (!preg_match("/^[a-z][a-z0-9_]*$/", $name)) {
            echo $OUTPUT->notification("Database table with invalid name '$fullname' detected, skipping.", 'notifyproblem');
            continue;
        }
        if ($type === 'VIEW') {
            echo $OUTPUT->notification("Unsupported database table view '$fullname' detected, skipping.", 'notifyproblem');
            continue;
        }
        $tables[$name] = $name;
    }
    $rs->close();

    return $tables;
}

/**
 * Remove all signed numbers from current database and change
 * text fields to long texts - mysql only.
 */
function upgrade_mysql_fix_unsigned_and_lob_columns() {
    // We are not using standard API for changes of column
    // because everything 'signed'-related will be removed soon.

    // If anybody already has numbers higher than signed limit the execution stops
    // and tables must be fixed manually before continuing upgrade.

    global $DB;

    if ($DB->get_dbfamily() !== 'mysql') {
        return;
    }

    $pbar = new progress_bar('mysqlconvertunsignedlobs', 500, true);

    $prefix = $DB->get_prefix();
    $tables = upgrade_mysql_get_supported_tables();

    $tablecount = count($tables);
    $i = 0;
    foreach ($tables as $table) {
        $i++;

        $changes = array();

        $sql = "SHOW COLUMNS FROM `{{$table}}`";
        $rs = $DB->get_recordset_sql($sql);
        foreach ($rs as $column) {
            $column = (object)array_change_key_case((array)$column, CASE_LOWER);
            if (stripos($column->type, 'unsigned') !== false) {
                $maxvalue = 0;
                if (preg_match('/^int/i', $column->type)) {
                    $maxvalue = 2147483647;
                } else if (preg_match('/^medium/i', $column->type)) {
                    $maxvalue = 8388607;
                } else if (preg_match('/^smallint/i', $column->type)) {
                    $maxvalue = 32767;
                } else if (preg_match('/^tinyint/i', $column->type)) {
                    $maxvalue = 127;
                }
                if ($maxvalue) {
                    // Make sure nobody is abusing our integer ranges - moodle int sizes are in digits, not bytes!!!
                    $invalidcount = $DB->get_field_sql("SELECT COUNT('x') FROM `{{$table}}` WHERE `$column->field` > :maxnumber", array('maxnumber'=>$maxvalue));
                    if ($invalidcount) {
                        throw new moodle_exception('notlocalisederrormessage', 'error', new moodle_url('/admin/'), "Database table '{$table}'' contains unsigned column '{$column->field}' with $invalidcount values that are out of allowed range, upgrade can not continue.");
                    }
                }
                $type = preg_replace('/unsigned/i', 'signed', $column->type);
                $notnull = ($column->null === 'NO') ? 'NOT NULL' : 'NULL';
                $default = (!is_null($column->default) and $column->default !== '') ? "DEFAULT '$column->default'" : '';
                $autoinc = (stripos($column->extra, 'auto_increment') !== false) ? 'AUTO_INCREMENT' : '';
                // Primary and unique not necessary here, change_database_structure does not add prefix.
                $changes[] = "MODIFY COLUMN `$column->field` $type $notnull $default $autoinc";

            } else if ($column->type === 'tinytext' or $column->type === 'mediumtext' or $column->type === 'text') {
                $notnull = ($column->null === 'NO') ? 'NOT NULL' : 'NULL';
                $default = (!is_null($column->default) and $column->default !== '') ? "DEFAULT '$column->default'" : '';
                // Primary, unique and inc are not supported for texts.
                $changes[] = "MODIFY COLUMN `$column->field` LONGTEXT $notnull $default";

            } else if ($column->type === 'tinyblob' or $column->type === 'mediumblob' or $column->type === 'blob') {
                $notnull = ($column->null === 'NO') ? 'NOT NULL' : 'NULL';
                $default = (!is_null($column->default) and $column->default !== '') ? "DEFAULT '$column->default'" : '';
                // Primary, unique and inc are not supported for blobs.
                $changes[] = "MODIFY COLUMN `$column->field` LONGBLOB $notnull $default";
            }

        }
        $rs->close();

        if ($changes) {
            // Set appropriate timeout - 1 minute per thousand of records should be enough, min 60 minutes just in case.
            $count = $DB->count_records($table, array());
            $timeout = ($count/1000)*60;
            $timeout = ($timeout < 60*60) ? 60*60 : (int)$timeout;
            upgrade_set_timeout($timeout);

            $sql = "ALTER TABLE `{$prefix}$table` ".implode(', ', $changes);
            $DB->change_database_structure($sql);
        }

        $pbar->update($i, $tablecount, "Converted unsigned/lob columns in MySQL database - $i/$tablecount.");
    }
}

/**
 * Migrate NTEXT to NVARCHAR(MAX).
 */
function upgrade_mssql_nvarcharmax() {
    global $DB;

    if ($DB->get_dbfamily() !== 'mssql') {
        return;
    }

    $pbar = new progress_bar('mssqlconvertntext', 500, true);

    $prefix = $DB->get_prefix();
    $tables = $DB->get_tables(false);

    $tablecount = count($tables);
    $i = 0;
    foreach ($tables as $table) {
        $i++;

        $columns = array();

        $sql = "SELECT column_name
                  FROM INFORMATION_SCHEMA.COLUMNS
                 WHERE table_name = '{{$table}}' AND UPPER(data_type) = 'NTEXT'";
        $rs = $DB->get_recordset_sql($sql);
        foreach ($rs as $column) {
            $columns[] = $column->column_name;
        }
        $rs->close();

        if ($columns) {
            // Set appropriate timeout - 1 minute per thousand of records should be enough, min 60 minutes just in case.
            $count = $DB->count_records($table, array());
            $timeout = ($count/1000)*60;
            $timeout = ($timeout < 60*60) ? 60*60 : (int)$timeout;
            upgrade_set_timeout($timeout);

            $updates = array();
            foreach ($columns as $column) {
                // Change the definition.
                $sql = "ALTER TABLE {$prefix}$table ALTER COLUMN $column NVARCHAR(MAX)";
                $DB->change_database_structure($sql);
                $updates[] = "$column = $column";
            }

            // Now force the migration of text data to new optimised storage.
            $sql = "UPDATE {{$table}} SET ".implode(', ', $updates);
            $DB->execute($sql);
        }

        $pbar->update($i, $tablecount, "Converted NTEXT to NVARCHAR(MAX) columns in MS SQL Server database - $i/$tablecount.");
    }
}

/**
 * Migrate IMAGE to VARBINARY(MAX).
 */
function upgrade_mssql_varbinarymax() {
    global $DB;

    if ($DB->get_dbfamily() !== 'mssql') {
        return;
    }

    $pbar = new progress_bar('mssqlconvertimage', 500, true);

    $prefix = $DB->get_prefix();
    $tables = $DB->get_tables(false);

    $tablecount = count($tables);
    $i = 0;
    foreach ($tables as $table) {
        $i++;

        $columns = array();

        $sql = "SELECT column_name
                  FROM INFORMATION_SCHEMA.COLUMNS
                 WHERE table_name = '{{$table}}' AND UPPER(data_type) = 'IMAGE'";
        $rs = $DB->get_recordset_sql($sql);
        foreach ($rs as $column) {
            $columns[] = $column->column_name;
        }
        $rs->close();

        if ($columns) {
            // Set appropriate timeout - 1 minute per thousand of records should be enough, min 60 minutes just in case.
            $count = $DB->count_records($table, array());
            $timeout = ($count/1000)*60;
            $timeout = ($timeout < 60*60) ? 60*60 : (int)$timeout;
            upgrade_set_timeout($timeout);

            foreach ($columns as $column) {
                // Change the definition.
                $sql = "ALTER TABLE {$prefix}$table ALTER COLUMN $column VARBINARY(MAX)";
                $DB->change_database_structure($sql);
            }

            // Binary columns should not be used, do not waste time optimising the storage.
        }

        $pbar->update($i, $tablecount, "Converted IMAGE to VARBINARY(MAX) columns in MS SQL Server database - $i/$tablecount.");
    }
}

/**
 * This upgrade script fixes the mismatches between DB fields course_modules.section
 * and course_sections.sequence. It makes sure that each module is included
 * in the sequence of at least one section.
 * Note that this script is different from admin/cli/fix_course_sortorder.php
 * in the following ways:
 * 1. It does not fix the cases when module appears several times in section(s) sequence(s) -
 *    it will be done automatically on the next viewing of the course.
 * 2. It does not remove non-existing modules from section sequences - administrator
 *    has to run the CLI script to do it.
 * 3. When this script finds an orphaned module it adds it to the section but makes hidden
 *    where CLI script does not change the visiblity specified in the course_modules table.
 */
function upgrade_course_modules_sequences() {
    global $DB;

    // Find all modules that point to the section which does not point back to this module.
    $sequenceconcat = $DB->sql_concat("','", "s.sequence", "','");
    $moduleconcat = $DB->sql_concat("'%,'", "m.id", "',%'");
    $sql = "SELECT m.id, m.course, m.section, s.sequence
        FROM {course_modules} m LEFT OUTER JOIN {course_sections} s
        ON m.course = s.course and m.section = s.id
        WHERE s.sequence IS NULL OR ($sequenceconcat NOT LIKE $moduleconcat)
        ORDER BY m.course";
    $rs = $DB->get_recordset_sql($sql);
    $sections = null;
    foreach ($rs as $cm) {
        if (!isset($sections[$cm->course])) {
            // Retrieve all sections for the course (only once for each corrupt course).
            $sections = array($cm->course =>
                    $DB->get_records('course_sections', array('course' => $cm->course),
                            'section', 'id, section, sequence, visible'));
            if (empty($sections[$cm->course])) {
                // Very odd - the course has a module in it but has no sections. Create 0-section.
                $newsection = array('sequence' => '', 'section' => 0, 'visible' => 1);
                $newsection['id'] = $DB->insert_record('course_sections',
                        $newsection + array('course' => $cm->course, 'summary' => '', 'summaryformat' => FORMAT_HTML));
                $sections[$cm->course] = array($newsection['id'] => (object)$newsection);
            }
        }
        // Attempt to find the section that has this module in it's sequence.
        // If there are several of them, pick the last because this is what get_fast_modinfo() does.
        $sectionid = null;
        foreach ($sections[$cm->course] as $section) {
            if (!empty($section->sequence) && in_array($cm->id, preg_split('/,/', $section->sequence))) {
                $sectionid = $section->id;
            }
        }
        if ($sectionid) {
            // Found the section. Update course_module to point to the correct section.
            $params = array('id' => $cm->id, 'section' => $sectionid);
            if (!$sections[$cm->course][$sectionid]->visible) {
                $params['visible'] = 0;
            }
            $DB->update_record('course_modules', $params);
        } else {
            // No section in the course has this module in it's sequence.
            if (isset($sections[$cm->course][$cm->section])) {
                // Try to add module to the section it points to (if it is valid).
                $sectionid = $cm->section;
            } else {
                // Section not found. Just add to the first available section.
                reset($sections[$cm->course]);
                $sectionid = key($sections[$cm->course]);
            }
            $newsequence = ltrim($sections[$cm->course][$sectionid]->sequence . ',' . $cm->id, ',');
            $sections[$cm->course][$sectionid]->sequence = $newsequence;
            $DB->update_record('course_sections', array('id' => $sectionid, 'sequence' => $newsequence));
            // Make module invisible because it was not displayed at all before this upgrade script.
            $DB->update_record('course_modules', array('id' => $cm->id, 'section' => $sectionid, 'visible' => 0, 'visibleold' => 0));
        }
    }
    $rs->close();
    unset($sections);

    // Note that we don't need to reset course cache here because it is reset automatically after upgrade.
}

/**
 * Updates the mime-types for files that exist in the database, based on their
 * file extension.
 *
 * @param array $filetypes Array with file extension as the key, and mimetype as the value
 */
function upgrade_mimetypes($filetypes) {
    global $DB;
    $select = $DB->sql_like('filename', '?', false);
    foreach ($filetypes as $extension=>$mimetype) {
        $DB->set_field_select(
            'files',
            'mimetype',
            $mimetype,
            $select,
            array($extension)
        );
    }
}
