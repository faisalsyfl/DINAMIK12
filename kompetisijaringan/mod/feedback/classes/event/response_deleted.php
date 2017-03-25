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
 * Event to be triggered when a feedback response is deleted.
 *
 * @package    mod_feedback
 * @copyright  2013 Ankit Agarwal
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later.
 */

namespace mod_feedback\event;
defined('MOODLE_INTERNAL') || die();

/**
 * Class response_deleted
 *
 * Class for event to be triggered when a feedback response is deleted.
 *
 * @package    mod_feedback
 * @since      Moodle 2.6
 * @copyright  2013 Ankit Agarwal
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later.
 */
class response_deleted extends \core\event\base {

    /**
     * Set basic properties for the event.
     */
    protected function init() {
        $this->data['objecttable'] = 'feedback_completed';
        $this->data['crud'] = 'd';
        $this->data['level'] = self::LEVEL_PARTICIPATING;
    }

    /**
     * Returns localised general event name.
     *
     * @return string
     */
    public static function get_name() {
        return get_string('eventresponsedeleted', 'mod_feedback');
    }

    /**
     * Returns non-localised event description with id's for admin use only.
     *
     * @return string
     */
    public function get_description() {
        return 'The feedback from user ' . $this->other['relateduserid']. ' was deleted by' . $this->userid;
    }

    /**
     * Replace add_to_log() statement.
     *
     * @return array of parameters to be passed to legacy add_to_log() function.
     */
    protected function get_legacy_logdata() {
        return array($this->courseid, 'feedback', 'delete', 'view.php?id=' . $this->other['cmid'], $this->other['instanceid'],
                $this->other['instanceid']);
    }

    /**
     * Define whether a user can view the event or not. Make sure no one except admin can see details of an anonymous response.
     *
     * @param int|\stdClass $userorid ID of the user.
     * @return bool True if the user can view the event, false otherwise.
     */
    public function can_view($userorid = null) {
        global $USER;

        if (empty($userorid)) {
            $userorid = $USER;
        }
        if ($this->other['anonymous'] == FEEDBACK_ANONYMOUS_YES) {
            return is_siteadmin($userorid);
        } else {
            return has_capability('mod/feedback:viewreports', $this->context, $userorid);
        }
    }

    /**
     * Custom validations
     *
     * @throws \coding_exception in case of any problems.
     */
    protected function validate_data() {
        if (!isset($this->other['anonymous'])) {
            throw new \coding_exception("Field other['anonymous'] cannot be empty");
        }
        if (!isset($this->other['cmid'])) {
            throw new \coding_exception("Field other['cmid'] cannot be empty");
        }
        if (!isset($this->other['instanceid'])) {
            throw new \coding_exception("Field other['instanceid'] cannot be empty");
        }
    }
}

