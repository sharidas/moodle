@report @report_participation
Feature: In a course administration page, navigate through report page, test for course participation page
  In order to navigate through report page
  As an admin
  I need to log in with different user and go to log and apply filter

  Background:
    Given the following "courses" exist:
      | fullname | shortname | category | groupmode |
      | Course 1 | C1 | 0 | 1 |
    And I log in as "admin"
    And the following "users" exist:
      | username | firstname | lastname | email |
      | student1 | Student | 1 | student1@example.com |
    And the following "course enrolments" exist:
      | user | course | role |
      | admin | C1 | editingteacher |
      | student1 | C1 | student |
    And I log out

  @javascript
  Scenario: Selector should be available in the course participation page
    Given I log in as "admin"
    And I am on "Course 1" course homepage
    When I navigate to "Reports > Course participation" in current page administration
    Then "Reports" "field" should exist
    And the "Reports" select box should contain "Course participation"
    And the field "Report" matches value "Course participation"
