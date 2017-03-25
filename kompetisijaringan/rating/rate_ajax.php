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
* This page receives ajax rating submissions
 *
 * It is similar to rate.php. Unlike rate.php a return url is NOT required.
 *
 * @package    core_rating
 * @category   rating
 * @copyright  2010 Andrew Davis
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

define('AJAX_SCRIPT', true);

require_once('../config.php');
require_once($CFG->dirroot.'/rating/lib.php');

$contextid         = required_param('contextid', PARAM_INT);
$component         = required_param('component', PARAM_COMPONENT);
$ratingarea        = required_param('ratingarea', PARAM_AREA);
$itemid            = required_param('itemid', PARAM_INT);
$scaleid           = required_param('scaleid', PARAM_INT);
$userrating        = required_param('rating', PARAM_INT);
$rateduserid       = required_param('rateduserid', PARAM_INT);//which user is being rated. Required to update their grade
$aggregationmethod = optional_param('aggregation', RATING_AGGREGATE_NONE, PARAM_INT);//we're going to calculate the aggregate and return it to the client

$result = new stdClass;

//if session has expired and its an ajax request so we cant do a page redirect
if( !isloggedin() ){
    $result->error = get_string('sessionerroruser', 'error');
    echo json_encode($result);
    die();
}

list($context, $course, $cm) = get_context_info_array($contextid);
require_login($course, false, $cm);

$contextid = null;//now we have a context object throw away the id from the user
$PAGE->set_context($context);
$PAGE->set_url('/rating/rate_ajax.php', array('contextid'=>$context->id));

if (!confirm_sesskey() || !has_capability('moodle/rating:rate',$context)) {
    echo $OUTPUT->header();
    echo get_string('ratepermissiondenied', 'rating');
    echo $OUTPUT->footer();
    die();
}

$rm = new rating_manager();

//check the module rating permissions
//doing this check here rather than within rating_manager::get_ratings() so we can return a json error response
$pluginpermissionsarray = $rm->get_plugin_permissions_array($context->id, $component, $ratingarea);

if (!$pluginpermissionsarray['rate']) {
    $result->error = get_string('ratepermissiondenied', 'rating');
    echo json_encode($result);
    die();
} else {
    $params = array(
        'context'     => $context,
        'component'   => $component,
        'ratingarea'  => $ratingarea,
        'itemid'      => $itemid,
        'scaleid'     => $scaleid,
        'rating'      => $userrating,
        'rateduserid' => $rateduserid,
        'aggregation' => $aggregationmethod
    );
    if (!$rm->check_rating_is_valid($params)) {
        $result->error = get_string('ratinginvalid', 'rating');
        echo json_encode($result);
        die();
    }
}

//rating options used to update the rating then retrieve the aggregate
$ratingoptions = new stdClass;
$ratingoptions->context = $context;
$ratingoptions->ratingarea = $ratingarea;
$ratingoptions->component = $component;
$ratingoptions->itemid  = $itemid;
$ratingoptions->scaleid = $scaleid;
$ratingoptions->userid  = $USER->id;

if ($userrating != RATING_UNSET_RATING) {
    $rating = new rating($ratingoptions);
    $rating->update_rating($userrating);
} else { //delete the rating if the user set to Rate...
    $options = new stdClass;
    $options->contextid = $context->id;
    $options->component = $component;
    $options->ratingarea = $ratingarea;
    $options->userid = $USER->id;
    $options->itemid = $itemid;

    $rm->delete_ratings($options);
}

// Future possible enhancement: add a setting to turn grade updating off for those who don't want them in gradebook
// note that this would need to be done in both rate.php and rate_ajax.php
if ($context->contextlevel == CONTEXT_MODULE) {
    //tell the module that its grades have changed
    $modinstance = $DB->get_record($cm->modname, array('id' => $cm->instance));
    if ($modinstance) {
        $modinstance->cmidnumber = $cm->id; //MDL-12961
        $functionname = $cm->modname.'_update_grades';
        require_once($CFG->dirroot."/mod/{$cm->modname}/lib.php");
        if (function_exists($functionname)) {
            $functionname($modinstance, $rateduserid);
        }
    }
}

//object to return to client as json
$result->success = true;

//need to retrieve the updated item to get its new aggregate value
$item = new stdClass;
$item->id = $itemid;

//most of $ratingoptions variables were previously set
$ratingoptions->items = array($item);
$ratingoptions->aggregate = $aggregationmethod;

$items = $rm->get_ratings($ratingoptions);
$firstrating = $items[0]->rating;

//for custom scales return text not the value
//this scales weirdness will go away when scales are refactored
$scalearray = null;
$aggregatetoreturn = round($firstrating->aggregate, 1);

// Output a dash if aggregation method == COUNT as the count is output next to the aggregate anyway
if ($firstrating->settings->aggregationmethod == RATING_AGGREGATE_COUNT or $firstrating->count == 0) {
    $aggregatetoreturn = ' - ';
} else if ($firstrating->settings->scale->id < 0) { //if its non-numeric scale
    //dont use the scale item if the aggregation method is sum as adding items from a custom scale makes no sense
    if ($firstrating->settings->aggregationmethod != RATING_AGGREGATE_SUM) {
        $scalerecord = $DB->get_record('scale', array('id' => -$firstrating->settings->scale->id));
        if ($scalerecord) {
            $scalearray = explode(',', $scalerecord->scale);
            $aggregatetoreturn = $scalearray[$aggregatetoreturn-1];
        }
    }
}

//See if the user has permission to see the rating aggregate
if ($firstrating->user_can_view_aggregate()) {
    $result->aggregate = $aggregatetoreturn;
    $result->count = $firstrating->count;
    $result->itemid = $itemid;
}

echo json_encode($result);