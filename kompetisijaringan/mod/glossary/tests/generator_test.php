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
 * mod_glossary generator tests
 *
 * @package    mod_glossary
 * @category   test
 * @copyright  2013 Marina Glancy
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

/**
 * Genarator tests class for mod_glossary.
 *
 * @package    mod_glossary
 * @category   test
 * @copyright  2013 Marina Glancy
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class mod_glossary_generator_testcase extends advanced_testcase {

    public function test_create_instance() {
        global $DB;
        $this->resetAfterTest();
        $this->setAdminUser();

        $course = $this->getDataGenerator()->create_course();

        $this->assertFalse($DB->record_exists('glossary', array('course' => $course->id)));
        $glossary = $this->getDataGenerator()->create_module('glossary', array('course' => $course));
        $records = $DB->get_records('glossary', array('course' => $course->id), 'id');
        $this->assertEquals(1, count($records));
        $this->assertTrue(array_key_exists($glossary->id, $records));

        $params = array('course' => $course->id, 'name' => 'Another glossary');
        $glossary = $this->getDataGenerator()->create_module('glossary', $params);
        $records = $DB->get_records('glossary', array('course' => $course->id), 'id');
        $this->assertEquals(2, count($records));
        $this->assertEquals('Another glossary', $records[$glossary->id]->name);
    }

    public function test_create_content() {
        global $DB;
        $this->resetAfterTest();
        $this->setAdminUser();

        $course = $this->getDataGenerator()->create_course();
        $glossary = $this->getDataGenerator()->create_module('glossary', array('course' => $course));
        $glossarygenerator = $this->getDataGenerator()->get_plugin_generator('mod_glossary');

        $entry1 = $glossarygenerator->create_content($glossary);
        $entry2 = $glossarygenerator->create_content($glossary, array('concept' => 'Custom concept'));
        $records = $DB->get_records('glossary_entries', array('glossaryid' => $glossary->id), 'id');
        $this->assertEquals(2, count($records));
        $this->assertEquals($entry1->id, $records[$entry1->id]->id);
        $this->assertEquals($entry2->id, $records[$entry2->id]->id);
        $this->assertEquals('Custom concept', $records[$entry2->id]->concept);
    }
}
