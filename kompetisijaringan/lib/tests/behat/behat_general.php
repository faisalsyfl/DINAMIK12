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
 * General use steps definitions.
 *
 * @package   core
 * @category  test
 * @copyright 2012 David Monllaó
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

// NOTE: no MOODLE_INTERNAL test here, this file may be required by behat before including /config.php.

require_once(__DIR__ . '/../../behat/behat_base.php');

use Behat\Mink\Exception\ExpectationException as ExpectationException,
    Behat\Mink\Exception\ElementNotFoundException as ElementNotFoundException,
    Behat\Mink\Exception\DriverException as DriverException,
    WebDriver\Exception\NoSuchElement as NoSuchElement,
    WebDriver\Exception\StaleElementReference as StaleElementReference,
    Behat\Gherkin\Node\TableNode as TableNode;

/**
 * Cross component steps definitions.
 *
 * Basic web application definitions from MinkExtension and
 * BehatchExtension. Definitions modified according to our needs
 * when necessary and including only the ones we need to avoid
 * overlapping and confusion.
 *
 * @package   core
 * @category  test
 * @copyright 2012 David Monllaó
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class behat_general extends behat_base {

    /**
     * @var string used by {@link switch_to_window()} and
     * {@link switch_to_the_main_window()} to work-around a Chrome browser issue.
     */
    const MAIN_WINDOW_NAME = '__moodle_behat_main_window_name';

    /**
     * Opens Moodle homepage.
     *
     * @Given /^I am on homepage$/
     */
    public function i_am_on_homepage() {
        $this->getSession()->visit($this->locate_path('/'));
    }

    /**
     * Reloads the current page.
     *
     * @Given /^I reload the page$/
     */
    public function reload() {
        $this->getSession()->reload();
    }

    /**
     * Follows the page redirection. Use this step after any action that shows a message and waits for a redirection
     *
     * @Given /^I wait to be redirected$/
     */
    public function i_wait_to_be_redirected() {

        // Xpath and processes based on core_renderer::redirect_message(), core_renderer::$metarefreshtag and
        // moodle_page::$periodicrefreshdelay possible values.
        if (!$metarefresh = $this->getSession()->getPage()->find('xpath', "//head/descendant::meta[@http-equiv='refresh']")) {
            // We don't fail the scenario if no redirection with message is found to avoid race condition false failures.
            return true;
        }

        // Wrapped in try & catch in case the redirection has already been executed.
        try {
            $content = $metarefresh->getAttribute('content');
        } catch (NoSuchElement $e) {
            return true;
        } catch (StaleElementReference $e) {
            return true;
        }

        // Getting the refresh time and the url if present.
        if (strstr($content, 'url') != false) {

            list($waittime, $url) = explode(';', $content);

            // Cleaning the URL value.
            $url = trim(substr($url, strpos($url, 'http')));

        } else {
            // Just wait then.
            $waittime = $content;
        }


        // Wait until the URL change is executed.
        if ($this->running_javascript()) {
            $this->getSession()->wait($waittime * 1000, false);

        } else if (!empty($url)) {
            // We redirect directly as we can not wait for an automatic redirection.
            $this->getSession()->getDriver()->getClient()->request('get', $url);

        } else {
            // Reload the page if no URL was provided.
            $this->getSession()->getDriver()->reload();
        }
    }

    /**
     * Switches to the specified iframe.
     *
     * @Given /^I switch to "(?P<iframe_name_string>(?:[^"]|\\")*)" iframe$/
     * @param string $iframename
     */
    public function switch_to_iframe($iframename) {

        // We spin to give time to the iframe to be loaded.
        // Using extended timeout as we don't know about which
        // kind of iframe will be loaded.
        $this->spin(
            function($context, $iframename) {
                $context->getSession()->switchToIFrame($iframename);

                // If no exception we are done.
                return true;
            },
            $iframename,
            self::EXTENDED_TIMEOUT
        );
    }

    /**
     * Switches to the main Moodle frame.
     *
     * @Given /^I switch to the main frame$/
     */
    public function switch_to_the_main_frame() {
        $this->getSession()->switchToIFrame();
    }

    /**
     * Switches to the specified window. Useful when interacting with popup windows.
     *
     * @Given /^I switch to "(?P<window_name_string>(?:[^"]|\\")*)" window$/
     * @param string $windowname
     */
    public function switch_to_window($windowname) {
        // In Behat, some browsers (e.g. Chrome) are unable to switch to a
        // window without a name, and by default the main browser window does
        // not have a name. To work-around this, when we switch away from an
        // unnamed window (presumably the main window) to some other named
        // window, then we first set the main window name to a conventional
        // value that we can later use this name to switch back.
        $this->getSession()->evaluateScript(
                'if (window.name == "") window.name = "' . self::MAIN_WINDOW_NAME . '"');

        $this->getSession()->switchToWindow($windowname);
    }

    /**
     * Switches to the main Moodle window. Useful when you finish interacting with popup windows.
     *
     * @Given /^I switch to the main window$/
     */
    public function switch_to_the_main_window() {
        $this->getSession()->switchToWindow(self::MAIN_WINDOW_NAME);
    }

    /**
     * Accepts the currently displayed alert dialog. This step does not work in all the browsers, consider it experimental.
     * @Given /^I accept the currently displayed dialog$/
     */
    public function accept_currently_displayed_alert_dialog() {
        $this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    }

    /**
     * Clicks link with specified id|title|alt|text.
     *
     * @When /^I follow "(?P<link_string>(?:[^"]|\\")*)"$/
     * @throws ElementNotFoundException Thrown by behat_base::find
     * @param string $link
     */
    public function click_link($link) {

        $linknode = $this->find_link($link);
        $this->ensure_node_is_visible($linknode);
        $linknode->click();
    }

    /**
     * Waits X seconds. Required after an action that requires data from an AJAX request.
     *
     * @Then /^I wait "(?P<seconds_number>\d+)" seconds$/
     * @param int $seconds
     */
    public function i_wait_seconds($seconds) {

        if (!$this->running_javascript()) {
            throw new DriverException('Waits are disabled in scenarios without Javascript support');
        }

        $this->getSession()->wait($seconds * 1000, false);
    }

    /**
     * Waits until the page is completely loaded. This step is auto-executed after every step.
     *
     * @Given /^I wait until the page is ready$/
     */
    public function wait_until_the_page_is_ready() {

        if (!$this->running_javascript()) {
            throw new DriverException('Waits are disabled in scenarios without Javascript support');
        }

        $this->getSession()->wait(self::TIMEOUT * 1000, self::PAGE_READY_JS);
    }

    /**
     * Waits until the provided element selector exists in the DOM
     *
     * Using the protected method as this method will be usually
     * called by other methods which are not returning a set of
     * steps and performs the actions directly, so it would not
     * be executed if it returns another step.

     * @Given /^I wait until "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" exists$/
     * @param string $element
     * @param string $selector
     * @return void
     */
    public function wait_until_exists($element, $selectortype) {
        $this->ensure_element_exists($element, $selectortype);
    }

    /**
     * Waits until the provided element does not exist in the DOM
     *
     * Using the protected method as this method will be usually
     * called by other methods which are not returning a set of
     * steps and performs the actions directly, so it would not
     * be executed if it returns another step.

     * @Given /^I wait until "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" does not exist$/
     * @param string $element
     * @param string $selector
     * @return void
     */
    public function wait_until_does_not_exists($element, $selectortype) {
        $this->ensure_element_does_not_exist($element, $selectortype);
    }

    /**
     * Generic mouse over action. Mouse over a element of the specified type.
     *
     * @When /^I hover "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)"$/
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     */
    public function i_hover($element, $selectortype) {

        // Gets the node based on the requested selector type and locator.
        $node = $this->get_selected_node($selectortype, $element);
        $node->mouseOver();
    }

    /**
     * Generic click action. Click on the element of the specified type.
     *
     * @When /^I click on "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)"$/
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     */
    public function i_click_on($element, $selectortype) {

        // Gets the node based on the requested selector type and locator.
        $node = $this->get_selected_node($selectortype, $element);
        $this->ensure_node_is_visible($node);
        $node->click();
    }

    /**
     * Clicks the specified element and confirms the expected dialogue.
     *
     * @When /^I click on "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" confirming the dialogue$/
     * @throws ElementNotFoundException Thrown by behat_base::find
     * @param string $link
     */
    public function i_click_on_confirming_the_dialogue($element, $selectortype) {
        $this->i_click_on($element, $selectortype);
        $this->accept_currently_displayed_alert_dialog();
    }

    /**
     * Click on the element of the specified type which is located inside the second element.
     *
     * @When /^I click on "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" in the "(?P<element_container_string>(?:[^"]|\\")*)" "(?P<text_selector_string>[^"]*)"$/
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     * @param string $nodeelement Element we look in
     * @param string $nodeselectortype The type of selector where we look in
     */
    public function i_click_on_in_the($element, $selectortype, $nodeelement, $nodeselectortype) {

        $node = $this->get_node_in_container($selectortype, $element, $nodeselectortype, $nodeelement);
        $this->ensure_node_is_visible($node);
        $node->click();
    }

    /**
     * Click on the specified element inside a table row containing the specified text.
     *
     * @Given /^I click on "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>(?:[^"]|\\")*)" in the "(?P<row_text_string>(?:[^"]|\\")*)" table row$/
     * @throws ElementNotFoundException
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     * @param string $tablerowtext The table row text
     */
    public function i_click_on_in_the_table_row($element, $selectortype, $tablerowtext) {

        // The table row container.
        $nocontainerexception = new ElementNotFoundException($this->getSession(), '"' . $tablerowtext . '" row text ');
        $tablerowtext = $this->getSession()->getSelectorsHandler()->xpathLiteral($tablerowtext);
        $rownode = $this->find('xpath', "//tr[contains(., $tablerowtext)]", $nocontainerexception);

        // Looking for the element DOM node inside the specified row.
        list($selector, $locator) = $this->transform_selector($selectortype, $element);
        $elementnode = $this->find($selector, $locator, false, $rownode);
        $this->ensure_node_is_visible($elementnode);
        $elementnode->click();
    }

    /**
     * Drags and drops the specified element to the specified container. This step does not work in all the browsers, consider it experimental.
     *
     * The steps definitions calling this step as part of them should
     * manage the wait times by themselves as the times and when the
     * waits should be done depends on what is being dragged & dropper.
     *
     * @Given /^I drag "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector1_string>(?:[^"]|\\")*)" and I drop it in "(?P<container_element_string>(?:[^"]|\\")*)" "(?P<selector2_string>(?:[^"]|\\")*)"$/
     * @param string $element
     * @param string $selectortype
     * @param string $containerelement
     * @param string $containerselectortype
     */
    public function i_drag_and_i_drop_it_in($element, $selectortype, $containerelement, $containerselectortype) {

        list($sourceselector, $sourcelocator) = $this->transform_selector($selectortype, $element);
        $sourcexpath = $this->getSession()->getSelectorsHandler()->selectorToXpath($sourceselector, $sourcelocator);

        list($containerselector, $containerlocator) = $this->transform_selector($containerselectortype, $containerelement);
        $destinationxpath = $this->getSession()->getSelectorsHandler()->selectorToXpath($containerselector, $containerlocator);

        $this->getSession()->getDriver()->dragTo($sourcexpath, $destinationxpath);
    }

    /**
     * Checks, that the specified element is visible. Only available in tests using Javascript.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>(?:[^"]|\\")*)" should be visible$/
     * @throws ElementNotFoundException
     * @throws ExpectationException
     * @throws DriverException
     * @param string $element
     * @param string $selectortype
     * @return void
     */
    public function should_be_visible($element, $selectortype) {

        if (!$this->running_javascript()) {
            throw new DriverException('Visible checks are disabled in scenarios without Javascript support');
        }

        $node = $this->get_selected_node($selectortype, $element);
        if (!$node->isVisible()) {
            throw new ExpectationException('"' . $element . '" "' . $selectortype . '" is not visible', $this->getSession());
        }
    }

    /**
     * Checks, that the existing element is not visible. Only available in tests using Javascript.
     *
     * As a "not" method, it's performance could not be good, but in this
     * case the performance is good because the element must exist,
     * otherwise there would be a ElementNotFoundException, also here we are
     * not spinning until the element is visible.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>(?:[^"]|\\")*)" should not be visible$/
     * @throws ElementNotFoundException
     * @throws ExpectationException
     * @param string $element
     * @param string $selectortype
     * @return void
     */
    public function should_not_be_visible($element, $selectortype) {

        try {
            $this->should_be_visible($element, $selectortype);
            throw new ExpectationException('"' . $element . '" "' . $selectortype . '" is visible', $this->getSession());
        } catch (ExpectationException $e) {
            // All as expected.
        }
    }

    /**
     * Checks, that the specified element is visible inside the specified container. Only available in tests using Javascript.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" in the "(?P<element_container_string>(?:[^"]|\\")*)" "(?P<text_selector_string>[^"]*)" should be visible$/
     * @throws ElementNotFoundException
     * @throws DriverException
     * @throws ExpectationException
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     * @param string $nodeelement Element we look in
     * @param string $nodeselectortype The type of selector where we look in
     */
    public function in_the_should_be_visible($element, $selectortype, $nodeelement, $nodeselectortype) {

        if (!$this->running_javascript()) {
            throw new DriverException('Visible checks are disabled in scenarios without Javascript support');
        }

        $node = $this->get_node_in_container($selectortype, $element, $nodeselectortype, $nodeelement);
        if (!$node->isVisible()) {
            throw new ExpectationException(
                '"' . $element . '" "' . $selectortype . '" in the "' . $nodeelement . '" "' . $nodeselectortype . '" is not visible',
                $this->getSession()
            );
        }
    }

    /**
     * Checks, that the existing element is not visible inside the existing container. Only available in tests using Javascript.
     *
     * As a "not" method, it's performance could not be good, but in this
     * case the performance is good because the element must exist,
     * otherwise there would be a ElementNotFoundException, also here we are
     * not spinning until the element is visible.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" in the "(?P<element_container_string>(?:[^"]|\\")*)" "(?P<text_selector_string>[^"]*)" should not be visible$/
     * @throws ElementNotFoundException
     * @throws ExpectationException
     * @param string $element Element we look for
     * @param string $selectortype The type of what we look for
     * @param string $nodeelement Element we look in
     * @param string $nodeselectortype The type of selector where we look in
     */
    public function in_the_should_not_be_visible($element, $selectortype, $nodeelement, $nodeselectortype) {

        try {
            $this->in_the_should_be_visible($element, $selectortype, $nodeelement, $nodeselectortype);
            throw new ExpectationException(
                '"' . $element . '" "' . $selectortype . '" in the "' . $nodeelement . '" "' . $nodeselectortype . '" is visible',
                $this->getSession()
            );
        } catch (ExpectationException $e) {
            // All as expected.
        }
    }

    /**
     * Checks, that page contains specified text. It also checks if the text is visible when running Javascript tests.
     *
     * @Then /^I should see "(?P<text_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $text
     */
    public function assert_page_contains_text($text) {

        // Looking for all the matching nodes without any other descendant matching the
        // same xpath (we are using contains(., ....).
        $xpathliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($text);
        $xpath = "/descendant-or-self::*[contains(., $xpathliteral)]" .
            "[count(descendant::*[contains(., $xpathliteral)]) = 0]";

        try {
            $nodes = $this->find_all('xpath', $xpath);
        } catch (ElementNotFoundException $e) {
            throw new ExpectationException('"' . $text . '" text was not found in the page', $this->getSession());
        }

        // If we are not running javascript we have enough with the
        // element existing as we can't check if it is visible.
        if (!$this->running_javascript()) {
            return;
        }

        // We spin as we don't have enough checking that the element is there, we
        // should also ensure that the element is visible. Using microsleep as this
        // is a repeated step and global performance is important.
        $this->spin(
            function($context, $args) {

                foreach ($args['nodes'] as $node) {
                    if ($node->isVisible()) {
                        return true;
                    }
                }

                // If non of the nodes is visible we loop again.
                throw new ExpectationException('"' . $args['text'] . '" text was found but was not visible', $context->getSession());
            },
            array('nodes' => $nodes, 'text' => $text),
            false,
            false,
            true
        );

    }

    /**
     * Checks, that page doesn't contain specified text. When running Javascript tests it also considers that texts may be hidden.
     *
     * @Then /^I should not see "(?P<text_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $text
     */
    public function assert_page_not_contains_text($text) {

        // Looking for all the matching nodes without any other descendant matching the
        // same xpath (we are using contains(., ....).
        $xpathliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($text);
        $xpath = "/descendant-or-self::*[contains(., $xpathliteral)]" .
            "[count(descendant::*[contains(., $xpathliteral)]) = 0]";

        // We should wait a while to ensure that the page is not still loading elements.
        // Waiting less than self::TIMEOUT as we already waited for the DOM to be ready and
        // all JS to be executed.
        try {
            $nodes = $this->find_all('xpath', $xpath, false, false, self::REDUCED_TIMEOUT);
        } catch (ElementNotFoundException $e) {
            // All ok.
            return;
        }

        // If we are not running javascript we have enough with the
        // element existing as we can't check if it is hidden.
        if (!$this->running_javascript()) {
            throw new ExpectationException('"' . $text . '" text was found in the page', $this->getSession());
        }

        // If the element is there we should be sure that it is not visible.
        $this->spin(
            function($context, $args) {

                foreach ($args['nodes'] as $node) {
                    if ($node->isVisible()) {
                        throw new ExpectationException('"' . $args['text'] . '" text was found in the page', $context->getSession());
                    }
                }

                // If non of the found nodes is visible we consider that the text is not visible.
                return true;
            },
            array('nodes' => $nodes, 'text' => $text),
            self::REDUCED_TIMEOUT,
            false,
            true
        );

    }

    /**
     * Checks, that the specified element contains the specified text. When running Javascript tests it also considers that texts may be hidden.
     *
     * @Then /^I should see "(?P<text_string>(?:[^"]|\\")*)" in the "(?P<element_string>(?:[^"]|\\")*)" "(?P<text_selector_string>[^"]*)"$/
     * @throws ElementNotFoundException
     * @throws ExpectationException
     * @param string $text
     * @param string $element Element we look in.
     * @param string $selectortype The type of element where we are looking in.
     */
    public function assert_element_contains_text($text, $element, $selectortype) {

        // Getting the container where the text should be found.
        $container = $this->get_selected_node($selectortype, $element);

        // Looking for all the matching nodes without any other descendant matching the
        // same xpath (we are using contains(., ....).
        $xpathliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($text);
        $xpath = "/descendant-or-self::*[contains(., $xpathliteral)]" .
            "[count(descendant::*[contains(., $xpathliteral)]) = 0]";

        // Wait until it finds the text inside the container, otherwise custom exception.
        try {
            $nodes = $this->find_all('xpath', $xpath, false, $container);
        } catch (ElementNotFoundException $e) {
            throw new ExpectationException('"' . $text . '" text was not found in the "' . $element . '" element', $this->getSession());
        }

        // If we are not running javascript we have enough with the
        // element existing as we can't check if it is visible.
        if (!$this->running_javascript()) {
            return;
        }

        // We also check the element visibility when running JS tests. Using microsleep as this
        // is a repeated step and global performance is important.
        $this->spin(
            function($context, $args) {

                foreach ($args['nodes'] as $node) {
                    if ($node->isVisible()) {
                        return true;
                    }
                }

                throw new ExpectationException('"' . $args['text'] . '" text was found in the "' . $args['element'] . '" element but was not visible', $context->getSession());
            },
            array('nodes' => $nodes, 'text' => $text, 'element' => $element),
            false,
            false,
            true
        );
    }

    /**
     * Checks, that the specified element does not contain the specified text. When running Javascript tests it also considers that texts may be hidden.
     *
     * @Then /^I should not see "(?P<text_string>(?:[^"]|\\")*)" in the "(?P<element_string>(?:[^"]|\\")*)" "(?P<text_selector_string>[^"]*)"$/
     * @throws ElementNotFoundException
     * @throws ExpectationException
     * @param string $text
     * @param string $element Element we look in.
     * @param string $selectortype The type of element where we are looking in.
     */
    public function assert_element_not_contains_text($text, $element, $selectortype) {

        // Getting the container where the text should be found.
        $container = $this->get_selected_node($selectortype, $element);

        // Looking for all the matching nodes without any other descendant matching the
        // same xpath (we are using contains(., ....).
        $xpathliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($text);
        $xpath = "/descendant-or-self::*[contains(., $xpathliteral)]" .
            "[count(descendant::*[contains(., $xpathliteral)]) = 0]";

        // We should wait a while to ensure that the page is not still loading elements.
        // Giving preference to the reliability of the results rather than to the performance.
        try {
            $nodes = $this->find_all('xpath', $xpath, false, $container, self::REDUCED_TIMEOUT);
        } catch (ElementNotFoundException $e) {
            // All ok.
            return;
        }

        // If we are not running javascript we have enough with the
        // element not being found as we can't check if it is visible.
        if (!$this->running_javascript()) {
            throw new ExpectationException('"' . $text . '" text was found in the "' . $element . '" element', $this->getSession());
        }

        // We need to ensure all the found nodes are hidden.
        $this->spin(
            function($context, $args) {

                foreach ($args['nodes'] as $node) {
                    if ($node->isVisible()) {
                        throw new ExpectationException('"' . $args['text'] . '" text was found in the "' . $args['element'] . '" element', $context->getSession());
                    }
                }

                // If all the found nodes are hidden we are happy.
                return true;
            },
            array('nodes' => $nodes, 'text' => $text, 'element' => $element),
            self::REDUCED_TIMEOUT,
            false,
            true
        );
    }

    /**
     * Checks, that the first specified element appears before the second one.
     *
     * @Given /^"(?P<preceding_element_string>(?:[^"]|\\")*)" "(?P<selector1_string>(?:[^"]|\\")*)" should appear before "(?P<following_element_string>(?:[^"]|\\")*)" "(?P<selector2_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $preelement The locator of the preceding element
     * @param string $preselectortype The locator of the preceding element
     * @param string $postelement The locator of the latest element
     * @param string $postselectortype The selector type of the latest element
     */
    public function should_appear_before($preelement, $preselectortype, $postelement, $postselectortype) {

        // We allow postselectortype as a non-text based selector.
        list($preselector, $prelocator) = $this->transform_selector($preselectortype, $preelement);
        list($postselector, $postlocator) = $this->transform_selector($postselectortype, $postelement);

        $prexpath = $this->find($preselector, $prelocator)->getXpath();
        $postxpath = $this->find($postselector, $postlocator)->getXpath();

        // Using following xpath axe to find it.
        $msg = '"'.$preelement.'" "'.$preselectortype.'" does not appear before "'.$postelement.'" "'.$postselectortype.'"';
        $xpath = $prexpath.'/following::*[contains(., '.$postxpath.')]';
        if (!$this->getSession()->getDriver()->find($xpath)) {
            throw new ExpectationException($msg, $this->getSession());
        }
    }

    /**
     * Checks, that the first specified element appears after the second one.
     *
     * @Given /^"(?P<following_element_string>(?:[^"]|\\")*)" "(?P<selector1_string>(?:[^"]|\\")*)" should appear after "(?P<preceding_element_string>(?:[^"]|\\")*)" "(?P<selector2_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $postelement The locator of the latest element
     * @param string $postselectortype The selector type of the latest element
     * @param string $preelement The locator of the preceding element
     * @param string $preselectortype The locator of the preceding element
     */
    public function should_appear_after($postelement, $postselectortype, $preelement, $preselectortype) {

        // We allow postselectortype as a non-text based selector.
        list($postselector, $postlocator) = $this->transform_selector($postselectortype, $postelement);
        list($preselector, $prelocator) = $this->transform_selector($preselectortype, $preelement);

        $postxpath = $this->find($postselector, $postlocator)->getXpath();
        $prexpath = $this->find($preselector, $prelocator)->getXpath();

        // Using preceding xpath axe to find it.
        $msg = '"'.$postelement.'" "'.$postselectortype.'" does not appear after "'.$preelement.'" "'.$preselectortype.'"';
        $xpath = $postxpath.'/preceding::*[contains(., '.$prexpath.')]';
        if (!$this->getSession()->getDriver()->find($xpath)) {
            throw new ExpectationException($msg, $this->getSession());
        }
    }

    /**
     * Checks, that element of specified type is disabled.
     *
     * @Then /^the "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should be disabled$/
     * @throws ExpectationException Thrown by behat_base::find
     * @param string $element Element we look in
     * @param string $selectortype The type of element where we are looking in.
     */
    public function the_element_should_be_disabled($element, $selectortype) {

        // Transforming from steps definitions selector/locator format to Mink format and getting the NodeElement.
        $node = $this->get_selected_node($selectortype, $element);

        if (!$node->hasAttribute('disabled')) {
            throw new ExpectationException('The element "' . $element . '" is not disabled', $this->getSession());
        }
    }

    /**
     * Checks, that element of specified type is enabled.
     *
     * @Then /^the "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should be enabled$/
     * @throws ExpectationException Thrown by behat_base::find
     * @param string $element Element we look on
     * @param string $selectortype The type of where we look
     */
    public function the_element_should_be_enabled($element, $selectortype) {

        // Transforming from steps definitions selector/locator format to mink format and getting the NodeElement.
        $node = $this->get_selected_node($selectortype, $element);

        if ($node->hasAttribute('disabled')) {
            throw new ExpectationException('The element "' . $element . '" is not enabled', $this->getSession());
        }
    }

    /**
     * Checks the provided element and selector type are readonly on the current page.
     *
     * @Then /^the "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should be readonly$/
     * @throws ExpectationException Thrown by behat_base::find
     * @param string $element Element we look in
     * @param string $selectortype The type of element where we are looking in.
     */
    public function the_element_should_be_readonly($element, $selectortype) {
        // Transforming from steps definitions selector/locator format to Mink format and getting the NodeElement.
        $node = $this->get_selected_node($selectortype, $element);

        if (!$node->hasAttribute('readonly')) {
            throw new ExpectationException('The element "' . $element . '" is not readonly', $this->getSession());
        }
    }

    /**
     * Checks the provided element and selector type are not readonly on the current page.
     *
     * @Then /^the "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should not be readonly$/
     * @throws ExpectationException Thrown by behat_base::find
     * @param string $element Element we look in
     * @param string $selectortype The type of element where we are looking in.
     */
    public function the_element_should_not_be_readonly($element, $selectortype) {
        // Transforming from steps definitions selector/locator format to Mink format and getting the NodeElement.
        $node = $this->get_selected_node($selectortype, $element);

        if ($node->hasAttribute('readonly')) {
            throw new ExpectationException('The element "' . $element . '" is readonly', $this->getSession());
        }
    }

    /**
     * Checks the provided element and selector type exists in the current page.
     *
     * This method has been introduced in 2.7 and replaces self::should_exists(),
     * it has been added here to make backports easier and to help 3rd parties working on new
     * scenarios so they don't need to update their scenarios when they upgrade to 2.7.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should exist$/
     *
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     */
    public function should_exist($element, $selectortype) {
        // Forwarding it.
        $this->should_exists($element, $selectortype);
    }

    /**
     * Checks the provided element and selector type exists in the current page. This step will be deprecated in Moodle 2.7 in favour of '"ELEMENT_STRING" "SELECTOR_STRING" should exist'.
     *
     * This step is for advanced users, use it if you don't find
     * anything else suitable for what you need.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should exists$/
     * @throws ElementNotFoundException Thrown by behat_base::find
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     */
    public function should_exists($element, $selectortype) {

        // Getting Mink selector and locator.
        list($selector, $locator) = $this->transform_selector($selectortype, $element);

        // Will throw an ElementNotFoundException if it does not exist.
        $this->find($selector, $locator);
    }

    /**
     * Checks that the provided element and selector type not exists in the current page.
     *
     * This step is for advanced users, use it if you don't find
     * anything else suitable for what you need.
     *
     * This method has been introduced in 2.7 and replaces self::should_not_exists(),
     * it has been added here to make backports easier and to help 3rd parties working on new
     * scenarios so they don't need to update their scenarios when they upgrade to 2.7.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should not exist$/
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     */
    public function should_not_exist($element, $selectortype) {
        // Forwarding it.
        $this->should_not_exists($element, $selectortype);
    }

    /**
     * Checks that the provided element and selector type not exists in the current page. This step will be deprecated in Moodle 2.7 in favour of '"ELEMENT_STRING" "SELECTOR_STRING" should not exist'.
     *
     * This step is for advanced users, use it if you don't find anything else suitable for what you need.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should not exists$/
     * @throws ExpectationException
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     */
    public function should_not_exists($element, $selectortype) {

        // Getting Mink selector and locator.
        list($selector, $locator) = $this->transform_selector($selectortype, $element);

        try {

            // Using directly the spin method as we want a reduced timeout but there is no
            // need for a 0.1 seconds interval because in the optimistic case we will timeout.
            $params = array('selector' => $selector, 'locator' => $locator);
            // The exception does not really matter as we will catch it and will never "explode".
            $exception = new ElementNotFoundException($this->getSession(), $selectortype, null, $element);

            // If all goes good it will throw an ElementNotFoundExceptionn that we will catch.
            $this->spin(
                function($context, $args) {
                    return $context->getSession()->getPage()->findAll($args['selector'], $args['locator']);
                },
                $params,
                self::REDUCED_TIMEOUT,
                $exception,
                false
            );

            throw new ExpectationException('The "' . $element . '" "' . $selectortype . '" exists in the current page', $this->getSession());
        } catch (ElementNotFoundException $e) {
            // It passes.
            return;
        }
    }

    /**
     * This step triggers cron like a user would do going to admin/cron.php.
     *
     * @Given /^I trigger cron$/
     */
    public function i_trigger_cron() {
        $this->getSession()->visit($this->locate_path('/admin/cron.php'));
    }

    /**
     * Checks that an element and selector type exists in another element and selector type on the current page.
     *
     * This step is for advanced users, use it if you don't find anything else suitable for what you need.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should exist in the "(?P<element2_string>(?:[^"]|\\")*)" "(?P<selector2_string>[^"]*)"$/
     * @throws ElementNotFoundException Thrown by behat_base::find
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     * @param string $containerelement The container selector type
     * @param string $containerselectortype The container locator
     */
    public function should_exist_in_the($element, $selectortype, $containerelement, $containerselectortype) {
        // Get the container node.
        $containernode = $this->get_selected_node($containerselectortype, $containerelement);

        list($selector, $locator) = $this->transform_selector($selectortype, $element);

        // Specific exception giving info about where can't we find the element.
        $locatorexceptionmsg = $element . '" in the "' . $containerelement. '" "' . $containerselectortype. '"';
        $exception = new ElementNotFoundException($this->getSession(), $selectortype, null, $locatorexceptionmsg);

        // Looks for the requested node inside the container node.
        $this->find($selector, $locator, $exception, $containernode);
    }

    /**
     * Checks that an element and selector type does not exist in another element and selector type on the current page.
     *
     * This step is for advanced users, use it if you don't find anything else suitable for what you need.
     *
     * @Then /^"(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should not exist in the "(?P<element2_string>(?:[^"]|\\")*)" "(?P<selector2_string>[^"]*)"$/
     * @throws ExpectationException
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     * @param string $containerelement The container selector type
     * @param string $containerselectortype The container locator
     */
    public function should_not_exist_in_the($element, $selectortype, $containerelement, $containerselectortype) {

        // Get the container node; here we throw an exception
        // if the container node does not exist.
        $containernode = $this->get_selected_node($containerselectortype, $containerelement);

        list($selector, $locator) = $this->transform_selector($selectortype, $element);

        // Will throw an ElementNotFoundException if it does not exist, but, actually
        // it should not exists, so we try & catch it.
        try {
            // Would be better to use a 1 second sleep because the element should not be there,
            // but we would need to duplicate the whole find_all() logic to do it, the benefit of
            // changing to 1 second sleep is not significant.
            $this->find($selector, $locator, false, $containernode, self::REDUCED_TIMEOUT);
            throw new ExpectationException('The "' . $element . '" "' . $selectortype . '" exists in the "' .
                $containerelement . '" "' . $containerselectortype . '"', $this->getSession());
        } catch (ElementNotFoundException $e) {
            // It passes.
            return;
        }
    }

    /**
     * Checks whether there is an attribute on the given element that contains the specified text.
     *
     * @Then /^the "(?P<attribute_string>[^"]*)" attribute of "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should contain "(?P<text_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $attribute Name of attribute
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     * @param string $text Expected substring
     */
    public function the_attribute_of_should_contain($attribute, $element, $selectortype, $text) {
        // Get the container node (exception if it doesn't exist).
        $containernode = $this->get_selected_node($selectortype, $element);
        $value = $containernode->getAttribute($attribute);
        if ($value == null) {
            throw new ExpectationException('The attribute "' . $attribute. '" does not exist',
                    $this->getSession());
        } else if (strpos($value, $text) === false) {
            throw new ExpectationException('The attribute "' . $attribute .
                    '" does not contain "' . $text . '" (actual value: "' . $value . '")',
                    $this->getSession());
        }
    }

    /**
     * Checks that the attribute on the given element does not contain the specified text.
     *
     * @Then /^the "(?P<attribute_string>[^"]*)" attribute of "(?P<element_string>(?:[^"]|\\")*)" "(?P<selector_string>[^"]*)" should not contain "(?P<text_string>(?:[^"]|\\")*)"$/
     * @throws ExpectationException
     * @param string $attribute Name of attribute
     * @param string $element The locator of the specified selector
     * @param string $selectortype The selector type
     * @param string $text Expected substring
     */
    public function the_attribute_of_should_not_contain($attribute, $element, $selectortype, $text) {
        // Get the container node (exception if it doesn't exist).
        $containernode = $this->get_selected_node($selectortype, $element);
        $value = $containernode->getAttribute($attribute);
        if ($value == null) {
            throw new ExpectationException('The attribute "' . $attribute. '" does not exist',
                    $this->getSession());
        } else if (strpos($value, $text) !== false) {
            throw new ExpectationException('The attribute "' . $attribute .
                    '" contains "' . $text . '" (value: "' . $value . '")',
                    $this->getSession());
        }
    }

    /**
     * Checks the provided value exists in specific row/column of table.
     *
     * @Then /^"(?P<row_string>[^"]*)" row "(?P<column_string>[^"]*)" column of "(?P<table_string>[^"]*)" table should contain "(?P<value_string>[^"]*)"$/
     * @throws ElementNotFoundException
     * @param string $row row text which will be looked in.
     * @param string $column column text to search (or numeric value for the column position)
     * @param string $table table id/class/caption
     * @param string $value text to check.
     */
    public function row_column_of_table_should_contain($row, $column, $table, $value) {
        $tablenode = $this->get_selected_node('table', $table);
        $tablexpath = $tablenode->getXpath();

        $rowliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($row);
        $valueliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($value);
        $columnliteral = $this->getSession()->getSelectorsHandler()->xpathLiteral($column);

        if (preg_match('/^-?(\d+)-?$/', $column, $columnasnumber)) {
            // Column indicated as a number, just use it as position of the column.
            $columnpositionxpath = "/child::*[position() = {$columnasnumber[1]}]";
        } else {
            // Header can be in thead or tbody (first row), following xpath should work.
            $theadheaderxpath = "thead/tr[1]/th[(normalize-space(.)=" . $columnliteral . " or a[normalize-space(text())=" .
                $columnliteral . "])]";
            $tbodyheaderxpath = "tbody/tr[1]/td[(normalize-space(.)=" . $columnliteral . " or a[normalize-space(text())=" .
                $columnliteral . "])]";

            // Check if column exists.
            $columnheaderxpath = $tablexpath . "[" . $theadheaderxpath . " | " . $tbodyheaderxpath . "]";
            $columnheader = $this->getSession()->getDriver()->find($columnheaderxpath);
            if (empty($columnheader)) {
                $columnexceptionmsg = $column . '" in table "' . $table . '"';
                throw new ElementNotFoundException($this->getSession(), "\n$columnheaderxpath\n\n".'Column', null, $columnexceptionmsg);
            }
            // Following conditions were considered before finding column count.
            // 1. Table header can be in thead/tr/th or tbody/tr/td[1].
            // 2. First column can have th (Gradebook -> user report), so having lenient sibling check.
            $columnpositionxpath = "/child::*[position() = count(" . $tablexpath . "/" . $theadheaderxpath .
                "/preceding-sibling::*) + 1]";
        }

        // Check if value exists in specific row/column.
        // Get row xpath.
        $rowxpath = $tablexpath."/tbody/tr[th[normalize-space(.)=" . $rowliteral . "] | td[normalize-space(.)=" . $rowliteral . "]]";

        $columnvaluexpath = $rowxpath . $columnpositionxpath . "[contains(normalize-space(.)," . $valueliteral . ")]";

        // Looks for the requested node inside the container node.
        $coumnnode = $this->getSession()->getDriver()->find($columnvaluexpath);
        if (empty($coumnnode)) {
            $locatorexceptionmsg = $value . '" in "' . $row . '" row with column "' . $column;
            throw new ElementNotFoundException($this->getSession(), "\n$columnvaluexpath\n\n".'Column value', null, $locatorexceptionmsg);
        }
    }

    /**
     * Checks the provided value should not exist in specific row/column of table.
     *
     * @Then /^"(?P<row_string>[^"]*)" row "(?P<column_string>[^"]*)" column of "(?P<table_string>[^"]*)" table should not contain "(?P<value_string>[^"]*)"$/
     * @throws ElementNotFoundException
     * @param string $row row text which will be looked in.
     * @param string $column column text to search
     * @param string $table table id/class/caption
     * @param string $value text to check.
     */
    public function row_column_of_table_should_not_contain($row, $column, $table, $value) {
        try {
            $this->row_column_of_table_should_contain($row, $column, $table, $value);
            // Throw exception if found.
            throw new ExpectationException(
                '"' . $column . '" with value "' . $value . '" is present in "' . $row . '"  row for table "' . $table . '"',
                $this->getSession()
            );
        } catch (ElementNotFoundException $e) {
            // Table row/column doesn't contain this value. Nothing to do.
            return;
        }
    }

    /**
     * Checks that the provided value exist in table.
     * More info in http://docs.moodle.org/dev/Acceptance_testing#Providing_values_to_steps.
     *
     * First row may contain column headers or numeric indexes of the columns
     * (syntax -1- is also considered to be column index). Column indexes are
     * useful in case of multirow headers and/or presence of cells with colspan.
     *
     * @Then /^the following should exist in the "(?P<table_string>[^"]*)" table:$/
     * @throws ExpectationException
     * @param string $table name of table
     * @param TableNode $data table with first row as header and following values
     *        | Header 1 | Header 2 | Header 3 |
     *        | Value 1 | Value 2 | Value 3|
     */
    public function following_should_exist_in_the_table($table, TableNode $data) {
        $datahash = $data->getHash();

        foreach ($datahash as $row) {
            $firstcell = null;
            foreach ($row as $column => $value) {
                if ($firstcell === null) {
                    $firstcell = $value;
                } else {
                    $this->row_column_of_table_should_contain($firstcell, $column, $table, $value);
                }
            }
        }
    }

    /**
     * Checks that the provided value exist in table.
     * More info in http://docs.moodle.org/dev/Acceptance_testing#Providing_values_to_steps.
     *
     * @Then /^the following should not exist in the "(?P<table_string>[^"]*)" table:$/
     * @throws ExpectationException
     * @param string $table name of table
     * @param TableNode $data table with first row as header and following values
     *        | Header 1 | Header 2 | Header 3 |
     *        | Value 1 | Value 2 | Value 3|
     */
    public function following_should_not_exist_in_the_table($table, TableNode $data) {
        $datahash = $data->getHash();

        foreach ($datahash as $value) {
            $row = array_shift($value);
            foreach ($value as $column => $value) {
                try {
                    $this->row_column_of_table_should_contain($row, $column, $table, $value);
                    // Throw exception if found.
                    throw new ExpectationException('"' . $column . '" with value "' . $value . '" is present in "' .
                        $row . '"  row for table "' . $table . '"', $this->getSession()
                    );
                } catch (ElementNotFoundException $e) {
                    // Table row/column doesn't contain this value. Nothing to do.
                    continue;
                }
            }
        }
    }

    /**
     * Given the text of a link, download the linked file and return the contents.
     *
     * This is a helper method used by {@link following_should_download_bytes()}
     * and {@link following_should_download_between_and_bytes()}
     *
     * @param string $link the text of the link.
     * @return string the content of the downloaded file.
     */
    protected function download_file_from_link($link) {
        // Find the link.
        $linknode = $this->find_link($link);
        $this->ensure_node_is_visible($linknode);

        // Get the href and check it.
        $url = $linknode->getAttribute('href');
        if (!$url) {
            throw new ExpectationException('Download link does not have href attribute',
                    $this->getSession());
        }
        if (!preg_match('~^https?://~', $url)) {
            throw new ExpectationException('Download link not an absolute URL: ' . $url,
                    $this->getSession());
        }

        // Download the URL and check the size.
        $session = $this->getSession()->getCookie('MoodleSession');
        return download_file_content($url, array('Cookie' => 'MoodleSession=' . $session));
    }

    /**
     * Downloads the file from a link on the page and checks the size.
     *
     * Only works if the link has an href attribute. Javascript downloads are
     * not supported. Currently, the href must be an absolute URL.
     *
     * @Then /^following "(?P<link_string>[^"]*)" should download "(?P<expected_bytes>\d+)" bytes$/
     * @throws ExpectationException
     * @param string $link the text of the link.
     * @param number $expectedsize the expected file size in bytes.
     */
    public function following_should_download_bytes($link, $expectedsize) {
        $result = $this->download_file_from_link($link);
        $actualsize = (int)strlen($result);
        if ($actualsize !== (int)$expectedsize) {
            throw new ExpectationException('Downloaded data was ' . $actualsize .
                    ' bytes, expecting ' . $expectedsize, $this->getSession());
        }
    }

    /**
     * Downloads the file from a link on the page and checks the size is in a given range.
     *
     * Only works if the link has an href attribute. Javascript downloads are
     * not supported. Currently, the href must be an absolute URL.
     *
     * The range includes the endpoints. That is, a 10 byte file in considered to
     * be between "5" and "10" bytes, and between "10" and "20" bytes.
     *
     * @Then /^following "(?P<link_string>[^"]*)" should download between "(?P<min_bytes>\d+)" and "(?P<max_bytes>\d+)" bytes$/
     * @throws ExpectationException
     * @param string $link the text of the link.
     * @param number $minexpectedsize the minimum expected file size in bytes.
     * @param number $maxexpectedsize the maximum expected file size in bytes.
     */
    public function following_should_download_between_and_bytes($link, $minexpectedsize, $maxexpectedsize) {
        // If the minimum is greater than the maximum then swap the values.
        if ((int)$minexpectedsize > (int)$maxexpectedsize) {
            list($minexpectedsize, $maxexpectedsize) = array($maxexpectedsize, $minexpectedsize);
        }

        $result = $this->download_file_from_link($link);
        $actualsize = (int)strlen($result);
        if ($actualsize < $minexpectedsize || $actualsize > $maxexpectedsize) {
            throw new ExpectationException('Downloaded data was ' . $actualsize .
                    ' bytes, expecting between ' . $minexpectedsize . ' and ' .
                    $maxexpectedsize, $this->getSession());
        }
    }
}
