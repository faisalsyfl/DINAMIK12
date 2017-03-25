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
 * core web service login failed event.
 *
 * @package    core
 * @copyright  2013 Frédéric Massart
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

namespace core\event;
defined('MOODLE_INTERNAL') || die();

/**
 * core web service login_failed event class.
 *
 * @package    core
 * @since      Moodle 2.6
 * @copyright  2013 Frédéric Massart
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class webservice_login_failed extends \core\event\base {

    /**
     * Legacy log data.
     *
     * @var null|array
     */
    protected $legacylogdata;

    /**
     * Returns description of what happened.
     *
     * @return string
     */
    public function get_description() {
        return "Web service authentication failed with code: {$this->other['reason']}.";
    }

    /**
     * Return the legacy event log data.
     *
     * @return array|null
     */
    protected function get_legacy_logdata() {
        return $this->legacylogdata;
    }

    /**
     * Return localised event name.
     *
     * @return string
     */
    public static function get_name() {
        return get_string('event_webservice_login_failed', 'webservice');
    }

    /**
     * Init method.
     *
     * @return void
     */
    protected function init() {
        $this->data['crud'] = 'r';
        $this->data['level'] = self::LEVEL_OTHER;
        $this->context = \context_system::instance();
    }

    /**
     * Set the legacy event log data.
     *
     * @param array $logdata The log data.
     * @return void
     */
    public function set_legacy_logdata($logdata) {
        $this->legacylogdata = $logdata;
    }

    /**
     * Custom validation.
     *
     * It is recommended to set the properties:
     * - $other['tokenid']
     * - $other['username']
     *
     * However they are not mandatory as they are not always known.
     *
     * Please note that the token CANNOT be specified, it is considered
     * as a password and should never be displayed.
     *
     * @throws \coding_exception
     * @return void
     */
    protected function validate_data() {
        if (!isset($this->other['reason'])) {
           throw new \coding_exception('The key \'reason\' needs to be set in $other.');
        } else if (!isset($this->other['method'])) {
           throw new \coding_exception('The key \'method\' needs to be set in $other.');
        } else if (isset($this->other['token'])) {
           throw new \coding_exception('The token cannot be set in $other.');
        }
    }
}
