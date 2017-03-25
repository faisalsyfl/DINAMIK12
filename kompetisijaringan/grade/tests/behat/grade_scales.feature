@core @core_grades
Feature: View gradebook when scales are used
  In order to use scales to grade activities
  As an teacher
  I need to be able to view gradebook with scales

  Background:
    Given I log in as "admin"
    And I set the following administration settings values:
      | grade_report_showranges    | 1 |
      | grade_aggregations_visible | Mean of grades,Weighted mean of grades,Simple weighted mean of grades,Mean of grades (with extra credits),Median of grades,Lowest grade,Highest grade,Mode of grades,Sum of grades |
    And I navigate to "Scales" node in "Site administration > Grades"
    And I press "Add a new scale"
    And I set the following fields to these values:
      | Name  | Letterscale |
      | Scale | F,D,C,B,A   |
    And I press "Save changes"
    And I log out
    And the following "courses" exist:
      | fullname | shortname |
      | Course 1 | C1        |
    And the following "users" exist:
      | username | firstname | lastname | email            | idnumber |
      | teacher1 | Teacher   | 1        | teacher1@asd.com | t1       |
      | student1 | Student   | 1        | student1@asd.com | s1       |
      | student2 | Student   | 2        | student2@asd.com | s2       |
      | student3 | Student   | 3        | student3@asd.com | s3       |
      | student4 | Student   | 4        | student4@asd.com | s4       |
      | student5 | Student   | 5        | student5@asd.com | s5       |
    And the following "course enrolments" exist:
      | user     | course | role           |
      | teacher1 | C1     | editingteacher |
      | student1 | C1     | student        |
      | student2 | C1     | student        |
      | student3 | C1     | student        |
      | student4 | C1     | student        |
      | student5 | C1     | student        |
    And the following "grade categories" exist:
      | fullname       | course |
      | Sub category 1 | C1     |
    And the following "activities" exist:
      | activity | course | idnumber | name                | intro             | gradecategory  |
      | assign   | C1     | a1       | Test assignment one | Submit something! | Sub category 1 |
    And I log in as "teacher1"
    And I follow "Course 1"
    And I follow "Test assignment one"
    And I follow "Edit settings"
    And I expand all fieldsets
    And I set the field "Grade" to "Scale: Letterscale"
    And I press "Save and display"
    And I follow "View/grade all submissions"
    And I click on "Grade Student 1" "link" in the "Student 1" "table_row"
    And I set the field "Grade" to "A"
    And I press "Save and show next"
    And I set the field "Grade" to "B"
    And I press "Save and show next"
    And I set the field "Grade" to "C"
    And I press "Save and show next"
    And I set the field "Grade" to "D"
    And I press "Save and show next"
    And I set the field "Grade" to "F"
    And I press "Save changes"
    And I follow "Course 1"
    And I follow "Grades"
    And I turn editing mode on

  @javascript
  Scenario: Test displaying scales in gradebook in aggregation method Sum of grades
    When I follow "Edit   Course 1"
    And I set the field "Aggregation" to "Sum of grades"
    And I press "Save changes"
    And I follow "Edit   Sub category 1"
    And I set the field "Aggregation" to "Sum of grades"
    And I press "Save changes"
    And I turn editing mode off
    Then the following should exist in the "user-grades" table:
      | -1-                | -4-      | -5-            | -6-          |
      | Student 1          | A        | 5.00           | 5.00         |
      | Student 2          | B        | 4.00           | 4.00         |
      | Student 3          | C        | 3.00           | 3.00         |
      | Student 4          | D        | 2.00           | 2.00         |
      | Student 5          | F        | 1.00           | 1.00         |
    And the following should exist in the "user-grades" table:
      | -1-                | -2-      | -3-            | -4-          |
      | Range              | F–A      | 0.00–5.00      | 0.00–5.00    |
      | Overall average    | C        | 3.00           | 3.00         |
    And I follow "User report"
    And I set the field "Select all or one user" to "Student 3"
    And I click on "Select all or one user" "select"
    And the following should exist in the "user-grade" table:
      | Grade item          | Grade | Range | Percentage |
      | Test assignment one | C     | F–A   | 50.00 %    |
      | Category total      | 3.00  | 0–5   | 60.00 %    |
      | Course total        | 3.00  | 0–5   | 60.00 %    |
    And I set the field "jump" to "Simple view"
    And the following should exist in the "grade_edit_tree_table" table:
      | Name                | Max grade |
      | Test assignment one | 5.00      |
      | Category total      | 5.00      |
      | Course total        | 5.00      |
    And I log out
    And I log in as "student2"
    And I follow "Course 1"
    And I follow "Grades"
    And the following should exist in the "user-grade" table:
      | Grade item          | Grade | Range | Percentage |
      | Test assignment one | B     | F–A   | 75.00 %    |
      | Category total      | 4.00  | 0–5   | 80.00 %    |
      | Course total        | 4.00  | 0–5   | 80.00 %    |

  @javascript
  Scenario Outline: Test displaying scales in gradebook in all other aggregation methods
    When I follow "Edit   Course 1"
    And I set the field "Aggregation" to "<aggregation>"
    And I press "Save changes"
    And I follow "Edit   Sub category 1"
    And I expand all fieldsets
    And I set the field "Aggregation" to "<aggregation>"
    And I set the field "Category name" to "Sub category (<aggregation>)"
    And I set the field "Maximum grade" to "5"
    And I set the field "Minimum grade" to "1"
    And I press "Save changes"
    And I turn editing mode off
    Then the following should exist in the "user-grades" table:
      | -1-                | -4-      | -5-            | -6-            |
      | Student 1          | A        | 5.00           | <coursetotal1> |
      | Student 2          | B        | 4.00           | <coursetotal2> |
      | Student 3          | C        | 3.00           | <coursetotal3> |
      | Student 4          | D        | 2.00           | <coursetotal4> |
      | Student 5          | F        | 1.00           | <coursetotal5> |
    And the following should exist in the "user-grades" table:
      | -1-                | -2-      | -3-            | -4-            |
      | Range              | F–A      | 1.00–5.00      | 0.00–100.00    |
      | Overall average    | C        | 3.00           | <overallavg>   |
    And I follow "User report"
    And I set the field "Select all or one user" to "Student 3"
    And I click on "Select all or one user" "select"
    And the following should exist in the "user-grade" table:
      | Grade item          | Grade          | Range | Percentage    |
      | Test assignment one | C              | F–A   | 50.00 %       |
      | Category total      | 3.00           | 1–5   | 50.00 %       |
      | Course total        | <coursetotal3> | 0–100 | <courseperc3> |
    And I set the field "jump" to "Simple view"
    And the following should exist in the "grade_edit_tree_table" table:
      | Name                | Max grade |
      | Test assignment one | A (5)     |
      | Category total      |           |
      | Course total        |           |
    And I log out
    And I log in as "student2"
    And I follow "Course 1"
    And I follow "Grades"
    And the following should exist in the "user-grade" table:
      | Grade item          | Grade          | Range | Percentage    |
      | Test assignment one | B              | F–A   | 75.00 %       |
      | Category total      | 4.00           | 1–5   | 75.00 %       |
      | Course total        | <coursetotal2> | 0–100 | <courseperc2> |

  Examples:
      | aggregation                         | coursetotal1 | coursetotal2 | coursetotal3 | coursetotal4 | coursetotal5 |overallavg | courseperc2 | courseperc3 |
      | Mean of grades                      | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Weighted mean of grades             | -            | -            | -            | -            | -            | -         | -           | -           |
      | Simple weighted mean of grades      | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Mean of grades (with extra credits) | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Median of grades                    | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Lowest grade                        | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Highest grade                       | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
      | Mode of grades                      | 100.00       | 75.00        | 50.00        | 25.00        | 0.00         | 50.00     | 75.00 %     | 50.00 %     |
