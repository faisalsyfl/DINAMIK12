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

defined('MOODLE_INTERNAL') || die();

global $CFG;
require_once($CFG->dirroot . '/webservice/externallib.php');
require_once($CFG->dirroot . '/webservice/tests/helpers.php');

/**
 * External course functions unit tests
 *
 * @package    core_webservice
 * @category   external
 * @copyright  2012 Paul Charsley
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class core_webservice_externallib_testcase extends externallib_advanced_testcase {

    public function setUp() {
        // Calling parent is good, always
        parent::setUp();

        // We always need enabled WS for this testcase
        set_config('enablewebservices', '1');
    }

    public function test_get_site_info() {
        global $DB, $USER, $CFG;

        $this->resetAfterTest(true);

        // This is the info we are going to check
        set_config('release', '2.4dev (Build: 20120823)');
        set_config('version', '2012083100.00');

        // Set current user
        $user = array();
        $user['username'] = 'johnd';
        $user['firstname'] = 'John';
        $user['lastname'] = 'Doe';
        self::setUser(self::getDataGenerator()->create_user($user));

        // Add a web service and token.
        $webservice = new stdClass();
        $webservice->name = 'Test web service';
        $webservice->enabled = true;
        $webservice->restrictedusers = false;
        $webservice->component = 'moodle';
        $webservice->timecreated = time();
        $webservice->downloadfiles = true;
        $webservice->uploadfiles = true;
        $externalserviceid = $DB->insert_record('external_services', $webservice);

        // Add a function to the service
        $DB->insert_record('external_services_functions', array('externalserviceid' => $externalserviceid,
            'functionname' => 'core_course_get_contents'));

        $_POST['wstoken'] = 'testtoken';
        $externaltoken = new stdClass();
        $externaltoken->token = 'testtoken';
        $externaltoken->tokentype = 0;
        $externaltoken->userid = $USER->id;
        $externaltoken->externalserviceid = $externalserviceid;
        $externaltoken->contextid = 1;
        $externaltoken->creatorid = $USER->id;
        $externaltoken->timecreated = time();
        $DB->insert_record('external_tokens', $externaltoken);

        $siteinfo = core_webservice_external::get_site_info();

        // We need to execute the return values cleaning process to simulate the web service server.
        $siteinfo = external_api::clean_returnvalue(core_webservice_external::get_site_info_returns(), $siteinfo);

        $this->assertEquals('johnd', $siteinfo['username']);
        $this->assertEquals('John', $siteinfo['firstname']);
        $this->assertEquals('Doe', $siteinfo['lastname']);
        $this->assertEquals(current_language(), $siteinfo['lang']);
        $this->assertEquals($USER->id, $siteinfo['userid']);
        $this->assertEquals(true, $siteinfo['downloadfiles']);
        $this->assertEquals($CFG->release, $siteinfo['release']);
        $this->assertEquals($CFG->version, $siteinfo['version']);
        $this->assertEquals($CFG->mobilecssurl, $siteinfo['mobilecssurl']);
        $this->assertEquals(count($siteinfo['functions']), 1);
        $function = array_pop($siteinfo['functions']);
        $this->assertEquals($function['name'], 'core_course_get_contents');
        $this->assertEquals($function['version'], $siteinfo['version']);
        $this->assertEquals(1, $siteinfo['downloadfiles']);
        $this->assertEquals(1, $siteinfo['uploadfiles']);
    }

}
