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
 * mod_chat message sent event.
 *
 * @package    mod_chat
 * @copyright  2013 Frédéric Massart
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

namespace mod_chat\event;
defined('MOODLE_INTERNAL') || die();

/**
 * mod_chat message sent event class.
 *
 * @package    mod_chat
 * @since      Moodle 2.6
 * @copyright  2013 Frédéric Massart
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class message_sent extends \core\event\base {

    /**
     * Returns description of what happened.
     *
     * @return string
     */
    public function get_description() {
        return "The user $this->relateduserid has sent a message in a chat.";
    }

    /**
     * Return legacy log data.
     *
     * @return array
     */
    protected function get_legacy_logdata() {
        $message = $this->get_record_snapshot('chat_messages', $this->objectid);
        return array($this->courseid, 'chat', 'talk', 'view.php?id=' . $this->context->instanceid,
            $message->chatid, $this->context->instanceid, $this->relateduserid);
    }

    /**
     * Return localised event name.
     *
     * @return string
     */
    public static function get_name() {
        return get_string('event_message_sent', 'mod_chat');
    }

    /**
     * Get URL related to the action
     *
     * @return \moodle_url
     */
    public function get_url() {
        return new \moodle_url('/mod/chat/view.php', array('id' => $this->context->instanceid));
    }

    /**
     * Init method.
     *
     * @return void
     */
    protected function init() {
        $this->data['crud'] = 'c';
        $this->data['level'] = self::LEVEL_PARTICIPATING;
        $this->data['objecttable'] = 'chat_messages';
    }

    /**
     * Custom validation.
     *
     * @return void
     */
    protected function validate_data() {
        if (!isset($this->relateduserid)) {
            throw new \coding_exception('The property relateduserid must be set.');
        }
    }

}
