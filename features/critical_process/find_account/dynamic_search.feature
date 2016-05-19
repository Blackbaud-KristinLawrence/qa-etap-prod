@crit_proc9
Feature: Search using the dynamic search field

  Background:
  Given I login into eTap for CP9

  Scenario: Searching for an account, pressing Enter
    When I type 'Alm' into the dynamic search field
    And I press Enter on the keyboard
    Then the 'find account' screen should display
    And 'Talisha Almond' should show in the results

  Scenario: Searching by account number with one slash, pressing Enter
    When I type '/27' into the dynamic search field
    And I press Enter on the keyboard
    Then I should be taken to 'Talisha Almond' Home page

  Scenario: Searching by account number with two slashes, pressing Enter
    When I type '//27' into the dynamic search field
    And I press Enter on the keyboard
    Then 'Talisha Almond' should show in the results

  Scenario: Searching for an account, clicking the magnifying glass
    When I type 'Alm' into the dynamic search field
    And I click the magnifying glass
    Then the 'find account' screen should display
    And 'Talisha Almond' should show in the results

  Scenario: Searching by account number with one slash, clicking the magnifying glass
    When I type '/27' into the dynamic search field
    And I click the magnifying glass
    Then I should be taken to 'Talisha Almond' Home page

  Scenario: Searching by account number with two slashes, clicking the magnifying glass
    When I type '//27' into the dynamic search field
    And I click the magnifying glass
    Then 'Talisha Almond' should show in the results

  Scenario: Searching for an account in the dynamic drop down
    When I type 'Alm' into the dynamic search field
    And I pause for 3 seconds or more
    Then the dynamic drop down should appear
    And 'Talisha' Almond should show in the list

