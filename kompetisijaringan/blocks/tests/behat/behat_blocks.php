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
 * Steps definitions related with blocks.
 *
 * @package   core_block
 * @category  test
 * @copyright 2012 David Monllaó
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

// NOTE: no MOODLE_INTERNAL test here, this file may be required by behat before including /config.php.

require_once(__DIR__ . '/../../../lib/behat/behat_base.php');

use Behat\Behat\Context\Step\Given as Given;

/**
 * Blocks management steps definitions.
 *
 * @package    core_block
 * @category   test
 * @copyright  2012 David Monllaó
 * @license    http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class behat_blocks extends behat_base {

    /**
     * Adds the selected block. Editing mode must be previously enabled.
     *
     * @Given /^I add the "(?P<block_name_string>(?:[^"]|\\")*)" block$/
     * @param string $blockname
     */
    public function i_add_the_block($blockname) {
        $steps = new Given('I select "' . $this->escape($blockname) . '" from "bui_addblock"');

        // If we are running without javascript we need to submit the form.
        if (!$this->running_javascript()) {
            $steps = array(
                $steps,
                new Given('I click on "' . get_string('go') . '" "button" in the "#add_block" "css_element"')
            );
        }
        return $steps;
    }

    /**
     * Docks a block. Editing mode should be previously enabled.
     *
     * @Given /^I dock "(?P<block_name_string>(?:[^"]|\\")*)" block$/
     * @param string $blockname
     * @return Given
     */
    public function i_dock_block($blockname) {

        // Looking for both title and alt.
        $xpath = "//input[@type='image'][@title='" . get_string('dockblock', 'block', $blockname) . "' or @alt='" . get_string('addtodock', 'block') . "']";
        return new Given('I click on " ' . $xpath . '" "xpath_element" in the "' . $this->escape($blockname) . '" "block"');
    }

    /**
     * Opens a block's actions menu if it is not already opened.
     *
     * @Given /^I open the "(?P<block_name_string>(?:[^"]|\\")*)" blocks action menu$/
     * @throws DriverException The step is not available when Javascript is disabled
     * @param string $blockname
     * @return Given
     */
    public function i_open_the_blocks_action_menu($blockname) {

        if (!$this->running_javascript()) {
            // Action menu does not need to be open if Javascript is off.
            return;
        }

        // If it is already opened we do nothing.
        $blocknode = $this->get_text_selector_node('block', $blockname);
        if ($blocknode->hasClass('action-menu-shown')) {
            return;
        }

        return new Given('I click on "a[role=\'menuitem\']" "css_element" in the "' . $this->escape($blockname) . '" "block"');
    }

    /**
     * Clicks on Configure block for specified block. Page must be in editing mode.
     *
     * Argument block_name may be either the name of the block or CSS class of the block.
     *
     * @Given /^I configure the "(?P<block_name_string>(?:[^"]|\\")*)" block$/
     * @param string $blockname
     */
    public function i_configure_the_block($blockname) {
        // Note that since $blockname may be either block name or CSS class, we can not use the exact label of "Configure" link.
        return array(
            new Given('I open the "'.$this->escape($blockname).'" blocks action menu'),
            new Given('I click on "Configure" "link" in the "'.$this->escape($blockname).'" "block"')
        );
    }
}
