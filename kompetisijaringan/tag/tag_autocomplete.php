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
 * @package    core
 * @subpackage tag
 * @copyright  2007 Luiz Cruz <luiz.laydner@gmail.com>
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

define('AJAX_SCRIPT', true);

require_once('../config.php');
require_once('lib.php');

if (empty($CFG->usetags)) {
    // Tags are disabled.
    die();
}

require_login(0, false);
if (isguestuser()) {
    // Guests should not be using this.
    die();
}

// If a user cannot edit tags, they cannot add related tags which is what this auto complete is for.
require_capability('moodle/tag:edit', context_system::instance());

$query = optional_param('query', '', PARAM_TAG);

echo $OUTPUT->header();

// Limit the query to a minimum of 3 characters.
$similartags = array();
if (core_text::strlen($query) >= 3) {
    $similartags = tag_autocomplete($query);
}

foreach ($similartags as $tag) {
    echo clean_param($tag->name, PARAM_TAG) . "\t" . tag_display_name($tag) . "\n";
}

echo $OUTPUT->footer();
