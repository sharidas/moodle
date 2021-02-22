@report @report_log
Feature: In a course administration page, navigate through report page, test for report log page
  In order to navigate through report page
  As an admin
  I need to log in with different user and go to log and apply filter

  Background:
    Given the following "courses" exist:
      | fullname | shortname | category | groupmode |
      | Course 1 | C1 | 0 | 1 |
      | Course 2 | C2 | 0 | 1 |
      | Course 3 | C3 | 0 | 1 |
    And I log in as "admin"
    And the following "users" exist:
      | username | firstname | lastname | email |
      | student1 | Student | 1 | student1@example.com |
    And the following "course enrolments" exist:
      | user | course | role |
      | admin | C1 | editingteacher |
      | student1 | C1 | student |
      | admin | C2 | editingteacher |
      | student1 | C2 | student |
      | admin | C3 | editingteacher |
      | student1 | C3 | student |
    And I log out

  @javascript
  Scenario: Default page accessed for Report is log page
    Given I log in as "admin"
    And I am on "Course 1" course homepage
    When I navigate to "Reports" in current page administration
    Then "Reports" "field" should exist
    And the "Reports" select box should contain "Logs"
    And the field "Report" matches value "Logs"
