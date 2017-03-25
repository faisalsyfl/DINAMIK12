@core @core_group
Feature: Automatic creation of groups
  In order to quickly create groups
  As a teacher
  I need to create groups automatically and allocate them in groupings if necessary

  Background:
    Given the following "courses" exists:
      | fullname | shortname | category |
      | Course 1 | C1 | 0 |
    And the following "users" exists:
      | username | firstname | lastname | email |
      | teacher1 | Teacher | 1 | teacher1@asd.com |
      | student0 | Student | 0 | student0@asd.com |
      | student1 | Student | 1 | student1@asd.com |
      | student2 | Student | 2 | student2@asd.com |
      | student3 | Student | 3 | student3@asd.com |
      | student4 | Student | 4 | student4@asd.com |
      | student5 | Student | 5 | student5@asd.com |
      | student6 | Student | 6 | student6@asd.com |
      | student7 | Student | 7 | student7@asd.com |
      | student8 | Student | 8 | student8@asd.com |
      | student9 | Student | 9 | student9@asd.com |
    And the following "course enrolments" exists:
      | user | course | role |
      | teacher1 | C1 | editingteacher |
      | student0 | C1 | student |
      | student1 | C1 | student |
      | student2 | C1 | student |
      | student3 | C1 | student |
      | student4 | C1 | student |
      | student5 | C1 | student |
      | student6 | C1 | student |
      | student7 | C1 | student |
      | student8 | C1 | student |
      | student9 | C1 | student |
    And I log in as "teacher1"
    And I follow "Course 1"
    And I expand "Users" node
    And I follow "Groups"
    When I press "Auto-create groups"
    And I expand all fieldsets

  @javascript
  Scenario: Split automatically the course users in groups and add the groups to a new grouping
    Given I fill the moodle form with:
      | Auto create based on | Number of groups |
      | Group/member count | 2 |
      | Grouping of auto-created groups | New grouping |
      | Grouping name | Grouping name |
    And I press "Preview"
    Then I should see "Group members"
    And I should see "User count"
    And I should see "Group A"
    And I should see "Group B"
    And I press "Submit"
    And the "groups" select box should contain "Group A (5)"
    And the "groups" select box should contain "Group B (5)"
    And I follow "Groupings"
    And I should see "Grouping name"
    And I click on "Show groups in grouping" "link" in the "Grouping name" "table_row"
    And the "removeselect" select box should contain "Group A"
    And the "removeselect" select box should contain "Group B"

  @javascript
  Scenario: Split automatically the course users in groups based on group member count
    Given I fill the moodle form with:
      | Auto create based on | Members per group |
      | Group/member count | 4 |
      | Grouping of auto-created groups | New grouping |
      | Grouping name | Grouping name |
    And I press "Preview"
    Then I should see "Group members"
    And I should see "User count"
    And I should see "Group A" in the ".generaltable" "css_element"
    And I should see "Group B" in the ".generaltable" "css_element"
    And I should see "Group C" in the ".generaltable" "css_element"
    And I should see "4" in the "Group A" "table_row"
    And I should see "4" in the "Group B" "table_row"
    And I should see "2" in the "Group C" "table_row"
    And I check "Prevent last small group"
    And I press "Preview"
    And I should see "Group A" in the ".generaltable" "css_element"
    And I should see "Group B" in the ".generaltable" "css_element"
    And I should see "5" in the "Group A" "table_row"
    And I should see "5" in the "Group B" "table_row"
