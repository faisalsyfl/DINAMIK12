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
 * Script to show all the quizzes with attempts that have been upgraded
 * after the main upgrade. With an option to reset the conversion, so it can be
 * re-done if necessary.
 *
 * @package    tool
 * @subpackage qeupgradehelper
 * @copyright  2010 The Open University
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */


require_once(dirname(__FILE__) . '/../../../config.php');
require_once(dirname(__FILE__) . '/locallib.php');
require_once($CFG->libdir . '/adminlib.php');

require_login();
require_capability('moodle/site:config', context_system::instance());
tool_qeupgradehelper_require_upgraded();

admin_externalpage_setup('qeupgradehelper', '', array(),
        tool_qeupgradehelper_url('listupgraded'));
$PAGE->navbar->add(get_string('listupgraded', 'tool_qeupgradehelper'));

$renderer = $PAGE->get_renderer('tool_qeupgradehelper');

$quizzes = new tool_qeupgradehelper_resettable_quiz_list();

if ($quizzes->is_empty()) {
    echo $renderer->simple_message_page(get_string('nothingupgradedyet', 'tool_qeupgradehelper'));

} else {
    echo $renderer->quiz_list_page($quizzes);
}
