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
 * Helper to initialise behat contexts from moodle code.
 *
 * @package    core
 * @category   test
 * @copyright  2014 David Monllaó
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

// NOTE: no MOODLE_INTERNAL test here, this file may be required by behat before including /config.php.

use Behat\Mink\Session as Session,
    Behat\Mink\Mink as Mink;

/**
 * Helper to get behat contexts.
 *
 * @package    core
 * @category   test
 * @copyright  2014 David Monllaó
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class behat_context_helper {

    /**
     * List of already initialized contexts.
     *
     * @var array
     */
    protected static $contexts = array();

    /**
     * @var Mink.
     */
    protected static $mink = false;

    /**
     * Sets the browser session.
     *
     * @param Session $session
     * @return void
     */
    public static function set_session(Session $session) {

        // Set mink to be able to init a context.
        self::$mink = new Mink(array('mink' => $session));
        self::$mink->setDefaultSessionName('mink');
    }

    /**
     * Gets the required context.
     *
     * Getting a context you get access to all the steps
     * that uses direct API calls; steps returning step chains
     * can not be executed like this.
     *
     * @throws coding_exception
     * @param string $classname Context identifier (the class name).
     * @return behat_base
     */
    public static function get($classname) {

        if (!self::init_context($classname)) {
            throw coding_exception('The required "' . $classname . '" class does not exist');
        }

        return self::$contexts[$classname];
    }

    /**
     * Initializes the required context.
     *
     * @throws coding_exception
     * @param string $classname
     * @return bool
     */
    protected static function init_context($classname) {

        if (!empty(self::$contexts[$classname])) {
            return true;
        }

        if (!class_exists($classname)) {
            return false;
        }

        $instance = new $classname();
        $instance->setMink(self::$mink);

        self::$contexts[$classname] = $instance;

        return true;
    }

}
