@core @core_course
Feature: Test we can resort categories in the management interface.
  As a moodle admin
  I need to test we can resort top level categories.
  I need to test we can resort sub categories.
  I need to test we can manually sort categories.

  Scenario Outline: Test bulk sorting all categories.
    Given the following "categories" exists:
      | category | name | idnumber | sortorder |
      | 0 | Social studies | Ext003 | 1 |
      | 0 | Applied sciences | Sci001 | 2 |
      | 0 | Extended social studies | Ext002 | 3 |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I select "All categories" from "menuselectsortby"
    And I select <sortby> from "menuresortcategoriesby"
    And I press "Sort"
    # Redirect.
    And I should see the "Course categories" management page
    And I should see category listing <cat1> before <cat2>
    And I should see category listing <cat2> before <cat3>

  Examples:
    | sortby | cat1 | cat2 | cat3 |
    | "Sort categories by name"       | "Applied sciences"        | "Extended social studies" | "Social studies" |
    | "Sort categories by ID number"   | "Extended social studies" | "Social studies" | "Applied sciences" |

  Scenario Outline: Test bulk sorting current category.
    Given the following "categories" exists:
      | category | name | idnumber | sortorder |
      | 0 | Test category | Tes001 | 1 |
      | Tes001 | Social studies | Ext003 | 2 |
      | Tes001 | Applied sciences | Sci001 | 3 |
      | Tes001 | Extended social studies | Ext002 | 4 |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I click on "Test category" "link"
    # Redirect.
    And I should see the "Course categories and courses" management page
    And I select "This category" from "menuselectsortby"
    And I select <sortby> from "menuresortcategoriesby"
    And I press "Sort"
    # Redirect.
    And I should see the "Course categories and courses" management page
    And I should see category listing <cat1> before <cat2>
    And I should see category listing <cat2> before <cat3>

  Examples:
    | sortby | cat1 | cat2 | cat3 |
    | "Sort categories by name"       | "Applied sciences"        | "Extended social studies" | "Social studies" |
    | "Sort categories by ID number"   | "Extended social studies" | "Social studies" | "Applied sciences" |

  Scenario Outline: Test resorting subcategories.
    Given the following "categories" exists:
      | category | name | idnumber | sortorder |
      | 0 | Master cat  | CAT1 | 1 |
      | CAT1 | Social studies | Ext003 | 1 |
      | CAT1 | Applied sciences | Sci001 | 2 |
      | CAT1 | Extended social studies | Ext002 | 3 |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I click on "Master cat" "link"
    # Redirect.
    And I should see the "Course categories and courses" management page
    And I click on <sortby> action for "Master cat" in management category listing
    # Redirect.
    And I should see the "Course categories and courses" management page
    And I should see category listing <cat1> before <cat2>
    And I should see category listing <cat2> before <cat3>

  Examples:
    | sortby | cat1 | cat2 | cat3 |
    | "resortbyname"            | "Applied sciences"        | "Extended social studies" | "Social studies" |
    | "resortbyidnumber"        | "Extended social studies" | "Social studies" | "Applied sciences" |

  @javascript
  Scenario Outline: Test resorting subcategories with JS enabled.
    Given the following "categories" exists:
      | category | name | idnumber | sortorder |
      | 0 | Master cat  | CAT1 | 1 |
      | CAT1 | Social studies | Ext003 | 1 |
      | CAT1 | Applied sciences | Sci001 | 2 |
      | CAT1 | Extended social studies | Ext002 | 3 |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I click on "Master cat" category in the management category listing
  # Redirect.
    And I should see the "Course categories and courses" management page
    And I click on <sortby> action for "Master cat" in management category listing
  # Redirect.
    And I should see the "Course categories and courses" management page
    And I should see category listing <cat1> before <cat2>
    And I should see category listing <cat2> before <cat3>

  Examples:
    | sortby | cat1 | cat2 | cat3 |
    | "resortbyname"            | "Applied sciences"        | "Extended social studies" | "Social studies" |
    | "resortbyidnumber"        | "Extended social studies" | "Social studies" | "Applied sciences" |

  # The scenario below this is the same but with JS enabled.
  Scenario: Test moving categories up and down by one.
    Given the following "categories" exists:
      | category | idnumber | name |
      | 0 | CAT1 | Cat 1 |
      | 0 | CAT2 | Cat 2 |
      | CAT1 | CATA | Cat 1a |
      | CAT1 | CATB | Cat 1b |
      | CAT1 | CATC | Cat 1c |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I click on category "Cat 1" in the management interface
    # Redirect. We should a 1, 1a, 1b, 1c, 2.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 2"
    And I click to move category "CATA" down one
    # Redirect.We should a 1, 1b, 1a, 1c, 2.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 2"
    And I click to move category "CATC" up one
    # Redirect. We should a 1, 1b, 1c, 1a, 2.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 2"
    And I click to move category "CATA" down one
    # Redirect. We should a 1, 1b, 1c, 1a, 2.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 2"
    And I click to move category "CATB" up one
    # Redirect. We should a 1, 1b, 1c, 1a, 2.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 2"
    And I click to move category "CAT2" up one
    # Redirect. We should a 2, 1.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 2" before "Cat 1"
    And I click on category "Cat 1" in the management interface
    # Redirect. We should a 2, 1, 1b, 1c, 1a.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 2" before "Cat 1"
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 1a"

  @javascript @_cross_browser
  Scenario: Test using AJAX to move categories up and down by one.
    Given the following "categories" exists:
      | category | idnumber | name |
      | 0 | CAT1 | Cat 1 |
      | 0 | CAT2 | Cat 2 |
      | CAT1 | CATA | Cat 1a |
      | CAT1 | CATB | Cat 1b |
      | CAT1 | CATC | Cat 1c |

    And I log in as "admin"
    And I go to the courses management page
    And I should see the "Course categories" management page
    And I click on category "Cat 1" in the management interface
    # Redirect.
    And I should see the "Course categories and courses" management page
    And I should see category listing "Cat 1" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 2"
    And I click to move category "CATA" down one
    # AJAX request. No redirect.We should a 1, 1b, 1a, 1c, 2.
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 2"
    And I click to move category "CATC" up one
    # AJAX request. No redirect. We should a 1, 1b, 1c, 1a, 2.
    And I should see category listing "Cat 1" before "Cat 1b"
    And I should see category listing "Cat 1b" before "Cat 1c"
    And I should see category listing "Cat 1c" before "Cat 1a"
    And I should see category listing "Cat 1a" before "Cat 2"