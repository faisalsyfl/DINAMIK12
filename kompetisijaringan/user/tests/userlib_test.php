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
 * Unit tests for user/lib.php.
 *
 * @package    core_user
 * @category   phpunit
 * @copyright  2013 Rajesh Taneja <rajesh@moodle.com>
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

global $CFG;
require_once($CFG->dirroot.'/user/lib.php');

/**
 * Unit tests for user lib api.
 *
 * @package    core_user
 * @category   phpunit
 * @copyright  2013 Rajesh Taneja <rajesh@moodle.com>
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class core_userliblib_testcase extends advanced_testcase {
    /**
     * Test user_update_user.
     */
    public function test_user_update_user() {
        global $DB;

        $this->resetAfterTest();

        // Create user and modify user profile.
        $user = $this->getDataGenerator()->create_user();
        $user->firstname = 'Test';
        $user->password = 'M00dLe@T';

        // Update user and capture event.
        $sink = $this->redirectEvents();
        user_update_user($user);
        $events = $sink->get_events();
        $sink->close();
        $event = array_pop($events);

        // Test updated value.
        $dbuser = $DB->get_record('user', array('id' => $user->id));
        $this->assertSame($user->firstname, $dbuser->firstname);
        $this->assertNotSame('M00dLe@T', $dbuser->password);

        // Test event.
        $this->assertInstanceOf('\core\event\user_updated', $event);
        $this->assertSame($user->id, $event->objectid);
        $this->assertSame('user_updated', $event->get_legacy_eventname());
        $this->assertEventLegacyData($dbuser, $event);
        $this->assertEquals(context_user::instance($user->id), $event->get_context());
        $expectedlogdata = array(SITEID, 'user', 'update', 'view.php?id='.$user->id, '');
        $this->assertEventLegacyLogData($expectedlogdata, $event);

        // Update user with no password update.
        $password = $user->password = hash_internal_user_password('M00dLe@T');
        user_update_user($user, false);
        $dbuser = $DB->get_record('user', array('id' => $user->id));
        $this->assertSame($password, $dbuser->password);

        // Verify event is not triggred by user_update_user when needed.
        $sink = $this->redirectEvents();
        user_update_user($user, false, false);
        $events = $sink->get_events();
        $sink->close();
        $this->assertCount(0, $events);

        // With password, there should be 1 event.
        $sink = $this->redirectEvents();
        user_update_user($user, true, false);
        $events = $sink->get_events();
        $sink->close();
        $this->assertCount(1, $events);
        $event = array_pop($events);
        $this->assertInstanceOf('\core\event\user_updated', $event);
    }

    /**
     * Test create_users.
     */
    public function test_create_users() {
        global $DB;

        $this->resetAfterTest();

        $user = array(
            'username' => 'usernametest1',
            'password' => 'Moodle2012!',
            'idnumber' => 'idnumbertest1',
            'firstname' => 'First Name User Test 1',
            'lastname' => 'Last Name User Test 1',
            'middlename' => 'Middle Name User Test 1',
            'lastnamephonetic' => '最後のお名前のテスト一号',
            'firstnamephonetic' => 'お名前のテスト一号',
            'alternatename' => 'Alternate Name User Test 1',
            'email' => 'usertest1@email.com',
            'description' => 'This is a description for user 1',
            'city' => 'Perth',
            'country' => 'au'
            );

        // Create user and capture event.
        $sink = $this->redirectEvents();
        $user['id'] = user_create_user($user);
        $events = $sink->get_events();
        $sink->close();
        $event = array_pop($events);

        // Test user info in DB.
        $dbuser = $DB->get_record('user', array('id' => $user['id']));
        $this->assertEquals($dbuser->username, $user['username']);
        $this->assertEquals($dbuser->idnumber, $user['idnumber']);
        $this->assertEquals($dbuser->firstname, $user['firstname']);
        $this->assertEquals($dbuser->lastname, $user['lastname']);
        $this->assertEquals($dbuser->email, $user['email']);
        $this->assertEquals($dbuser->description, $user['description']);
        $this->assertEquals($dbuser->city, $user['city']);
        $this->assertEquals($dbuser->country, $user['country']);

        // Test event.
        $this->assertInstanceOf('\core\event\user_created', $event);
        $this->assertEquals($user['id'], $event->objectid);
        $this->assertEquals('user_created', $event->get_legacy_eventname());
        $this->assertEquals(context_user::instance($user['id']), $event->get_context());
        $this->assertEventLegacyData($dbuser, $event);
        $expectedlogdata = array(SITEID, 'user', 'add', '/view.php?id='.$event->objectid, fullname($dbuser));
        $this->assertEventLegacyLogData($expectedlogdata, $event);

        // Verify event is not triggred by user_create_user when needed.
        $user = array('username' => 'usernametest2'); // Create another user.
        $sink = $this->redirectEvents();
        user_create_user($user, true, false);
        $events = $sink->get_events();
        $sink->close();
        $this->assertCount(0, $events);
    }
}
