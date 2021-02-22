@report @report_loglive
Feature: In a course administration page, navigate through report page, test for report live log page
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
  Scenario: Selector should be available in live logs page
    Given I log in as "admin"
    And I am on "Course 1" course homepage
    When I navigate to "Reports > Live logs" in current page administration
    Then "Reports" "field" should exist
    And the "Reports" select box should contain "Live logs"
    And the field "Report" matches value "Live logs"
