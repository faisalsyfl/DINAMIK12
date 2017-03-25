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
 * Drop down for question categories.
 *
 * Contains HTML class for editing tags, both official and peronal.
 *
 * @package   core_form
 * @copyright 2009 Tim Hunt
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

global $CFG;
require_once($CFG->libdir . '/form/group.php');

/**
 * Form field type for editing tags.
 *
 * HTML class for editing tags, both official and peronal.
 *
 * @package   core_form
 * @category  form
 * @copyright 2009 Tim Hunt
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class MoodleQuickForm_tags extends MoodleQuickForm_group {
    /**
     * Inidcates that the user should be the usual interface, with the official
     * tags listed seprately, and a text box where they can type anything.
     * @var int
     */
    const DEFAULTUI = 'defaultui';

    /**
     * Indicates that the user should only be allowed to select official tags.
     * @var int
     */
    const ONLYOFFICIAL = 'onlyofficial';

    /**
     * Indicates that the user should just be given a text box to type in (they
     * can still type official tags though.
     * @var int
     */
    const NOOFFICIAL = 'noofficial';

    /**
     * Control the fieldnames for form elements display => int, one of the constants above.
     * @var array
     */
    protected $_options = array('display' => MoodleQuickForm_tags::DEFAULTUI);

    /**
     * Caches the list of official tags, to save repeat DB queries.
     * @var array
     */
    protected $_officialtags = null;

    /**
     * Constructor
     *
     * @param string $elementName Element name
     * @param mixed $elementLabel Label(s) for an element
     * @param array $options Options to control the element's display
     * @param mixed $attributes Either a typical HTML attribute string or an associative array.
     */
    function MoodleQuickForm_tags($elementName = null, $elementLabel = null, $options = array(), $attributes = null) {
        $this->HTML_QuickForm_element($elementName, $elementLabel, $attributes);
        $this->_persistantFreeze = true;
        $this->_appendName = true;
        $this->_type = 'tags';
        // set the options, do not bother setting bogus ones
        if (is_array($options)) {
            foreach ($options as $name => $value) {
                if (isset($this->_options[$name])) {
                    if (is_array($value) && is_array($this->_options[$name])) {
                        $this->_options[$name] = array_merge($this->_options[$name], $value);
                    } else {
                        $this->_options[$name] = $value;
                    }
                }
            }
        }
        global $CFG;
        if (empty($CFG->usetags)) {
            debugging('A tags formslib field has been created even thought $CFG->usetags is false.', DEBUG_DEVELOPER);
        }
    }

    /**
     * Internal function to load official tags
     *
     * @access protected
     */
    protected function _load_official_tags() {
        global $CFG, $DB;
        if (!is_null($this->_officialtags)) {
            return;
        }
        $namefield = empty($CFG->keeptagnamecase) ? 'name' : 'rawname';
        $this->_officialtags = $DB->get_records_menu('tag', array('tagtype' => 'official'), $namefield, 'id,' . $namefield);
    }

    /**
     * Creates the group's elements.
     */
    function _createElements() {
        global $CFG, $OUTPUT;
        $this->_elements = array();

        // Official tags.
        $showingofficial = $this->_options['display'] != MoodleQuickForm_tags::NOOFFICIAL;
        if ($showingofficial) {
            $this->_load_official_tags();

            // If the user can manage official tags, give them a link to manage them.
            $label = get_string('otags', 'tag');
            if (has_capability('moodle/tag:manage', context_system::instance())) {
                $url = $CFG->wwwroot .'/tag/manage.php';
                $label .= ' (' . $OUTPUT->action_link(
                    $url,
                    get_string('manageofficialtags', 'tag'),
                    new popup_action('click', $url, 'managetags'),
                    array('title'=>get_string('newwindow'))) . ')';
            }

            // Get the list of official tags.
            $noofficial = false;
            if (empty($this->_officialtags)) {
                $officialtags = array('' => get_string('none'));
                $noofficial = true;
            } else {
                $officialtags = array_combine($this->_officialtags, $this->_officialtags);
            }

            // Create the element.
            $size = min(5, count($officialtags));
            // E_STRICT creating elements without forms is nasty because it internally uses $this
            $officialtagsselect = @MoodleQuickForm::createElement('select', 'officialtags', $label, $officialtags, array('size' => $size));
            $officialtagsselect->setMultiple(true);
            if ($noofficial) {
                $officialtagsselect->updateAttributes(array('disabled' => 'disabled'));
            }
            $this->_elements[] = $officialtagsselect;
        }

        // Other tags.
        if ($this->_options['display'] != MoodleQuickForm_tags::ONLYOFFICIAL) {
            if ($showingofficial) {
                $label = get_string('othertags', 'tag');
            } else {
                $label = get_string('entertags', 'tag');
            }
            // E_STRICT creating elements without forms is nasty because it internally uses $this
            $othertags = @MoodleQuickForm::createElement('textarea', 'othertags', $label, array('cols'=>'40', 'rows'=>'5'));
            $this->_elements[] = $othertags;
        }

        // Paradoxically, the only way to get labels output is to ask for 'hidden'
        // labels, and then override the .accesshide class in the CSS!
        foreach ($this->_elements as $element){
            if (method_exists($element, 'setHiddenLabel')){
                $element->setHiddenLabel(true);
            }
        }
    }

    /**
     * Called by HTML_QuickForm whenever form event is made on this element
     *
     * @param string $event Name of event
     * @param mixed $arg event arguments
     * @param object $caller calling object
     */
    function onQuickFormEvent($event, $arg, &$caller) {
        switch ($event) {
            case 'updateValue':
                // Get the value we should be setting.
                $value = $this->_findValue($caller->_constantValues);
                if (null === $value) {
                    // if no boxes were checked, then there is no value in the array
                    // yet we don't want to display default value in this case
                    if ($caller->isSubmitted()) {
                        $value = $this->_findValue($caller->_submitValues);
                    } else {
                        $value = $this->_findValue($caller->_defaultValues);
                    }
                }

                if (!empty($value) && !(isset($value['officialtags']) || isset($value['othertags']))) {
                    // Separate the official and unoffical tags, if necessary.
                    $official = array();
                    $other = array();
                    if ($this->_options['display'] != MoodleQuickForm_tags::NOOFFICIAL) {
                        $this->_load_official_tags();
                        if (!empty($this->_officialtags)) {
                            $officaltags = array_combine($this->_officialtags, $this->_officialtags);
                        } else {
                            $officaltags = array();
                        }
                        foreach ($value as $tag) {
                            if (isset($officaltags[$tag])) {
                                $official[] = $tag;
                            } else {
                                $other[] = $tag;
                            }
                        }
                    } else {
                        $other = $value;
                    }
                    $value = array('officialtags' => $official, 'othertags' => implode(', ', $other));
                }
                if (!empty($value)) {
                    $this->setValue($value);
                }

                break;
            default:
                return parent::onQuickFormEvent($event, $arg, $caller);
        }
    }

    /**
     * Returns HTML for submitlink form element.
     *
     * @return string
     */
    function toHtml() {
        require_once('HTML/QuickForm/Renderer/Default.php');
        $renderer = new HTML_QuickForm_Renderer_Default();
        $renderer->setElementTemplate('{element}');
        parent::accept($renderer);
        return $renderer->toHtml();
    }

    /**
     * Accepts a renderer
     *
     * @param HTML_QuickForm_Renderer $renderer An HTML_QuickForm_Renderer object
     * @param bool $required Whether a group is required
     * @param string $error An error message associated with a group
     */
    function accept(&$renderer, $required = false, $error = null)
    {
        $renderer->renderElement($this, $required, $error);
    }

    /**
     * Output both official and peronal.
     *
     * @param array $submitValues values submitted.
     * @param bool $assoc specifies if returned array is associative
     * @return array
     */
    function exportValue(&$submitValues, $assoc = false) {
        $valuearray = array();

        // Get the data out of our child elements.
        foreach ($this->_elements as $element){
            $thisexport = $element->exportValue($submitValues[$this->getName()], true);
            if ($thisexport != null){
                $valuearray += $thisexport;
            }
        }

        // Get any manually typed tags.
        $tags = array();
        if ($this->_options['display'] != MoodleQuickForm_tags::ONLYOFFICIAL &&
                !empty($valuearray['othertags'])) {
            $rawtags = explode(',', clean_param($valuearray['othertags'], PARAM_NOTAGS));
            foreach ($rawtags as $tag) {
                $tags[] = trim($tag);
            }
        }

        // Add any official tags that were selected.
        if ($this->_options['display'] != MoodleQuickForm_tags::NOOFFICIAL &&
                !empty($valuearray['officialtags'])) {
            $tags = array_unique(array_merge($tags, $valuearray['officialtags']));
        }

        return array($this->getName() => $tags);
    }
}
