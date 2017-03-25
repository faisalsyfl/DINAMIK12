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
 * Settings for assignfeedback PDF plugin
 *
 * @package   assignfeedback_editpdf
 * @copyright 2013 Davo Smith
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

// Stamp files setting.
$name = 'assignfeedback_editpdf/stamps';
$title = get_string('stamps','assignfeedback_editpdf');
$description = get_string('stampsdesc', 'assignfeedback_editpdf');

$setting = new admin_setting_configstoredfile($name, $title, $description, 'stamps', 0,
    array('maxfiles' => 8, 'accepted_types' => array('image')));
$settings->add($setting);

// Ghostscript setting.
$settings->add(new admin_setting_configexecutable('assignfeedback_editpdf/gspath',
                                                  get_string('gspath', 'assignfeedback_editpdf'),
                                                  get_string('gspath_help', 'assignfeedback_editpdf'),
                                                  '/usr/bin/gs'));

$setting = new admin_setting_php_extension_enabled('assignfeedback_editpdf/zlibenabled',
                                                   get_string('zlibenabled', 'admin'),
                                                   get_string('zlibnotavailable', 'assignfeedback_editpdf'),
                                                   'zlib');

$settings->add($setting);

$url = new moodle_url('/mod/assign/feedback/editpdf/testgs.php');
$link = html_writer::link($url, get_string('testgs', 'assignfeedback_editpdf'));
$settings->add(new admin_setting_heading('testgs', '', $link));
