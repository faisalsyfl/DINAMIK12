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
 * Set tracking option for the forum.
 *
 * @package mod-forum
 * @copyright 2005 mchurch
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

require_once("../../config.php");
require_once("lib.php");

$id         = required_param('id',PARAM_INT);                           // The forum to subscribe or unsubscribe to
$returnpage = optional_param('returnpage', 'index.php', PARAM_FILE);    // Page to return to.

require_sesskey();

if (! $forum = $DB->get_record("forum", array("id" => $id))) {
    print_error('invalidforumid', 'forum');
}

if (! $course = $DB->get_record("course", array("id" => $forum->course))) {
    print_error('invalidcoursemodule');
}

if (! $cm = get_coursemodule_from_instance("forum", $forum->id, $course->id)) {
    print_error('invalidcoursemodule');
}

require_login($course, false, $cm);

$returnto = forum_go_back_to($returnpage.'?id='.$course->id.'&f='.$forum->id);

if (!forum_tp_can_track_forums($forum)) {
    redirect($returnto);
}

$info = new stdClass();
$info->name  = fullname($USER);
$info->forum = format_string($forum->name);
if (forum_tp_is_tracked($forum) ) {
    if (forum_tp_stop_tracking($forum->id)) {
        add_to_log($course->id, "forum", "stop tracking", "view.php?f=$forum->id", $forum->id, $cm->id);
        redirect($returnto, get_string("nownottracking", "forum", $info), 1);
    } else {
        print_error('cannottrack', '', $_SERVER["HTTP_REFERER"]);
    }

} else { // subscribe
    if (forum_tp_start_tracking($forum->id)) {
        add_to_log($course->id, "forum", "start tracking", "view.php?f=$forum->id", $forum->id, $cm->id);
        redirect($returnto, get_string("nowtracking", "forum", $info), 1);
    } else {
        print_error('cannottrack', '', $_SERVER["HTTP_REFERER"]);
    }
}


