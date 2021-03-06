@crit_proc9
Feature: Adding a gift through quick gift entry

  Background:
  Given I login into eTap for CP9

  Scenario: Add a gift through quick gift entry, searching by account name
    When I type 'Raymond Barnes' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Raymond Barnes' in the search results
    And I click Journal
    And I delete the existing transactions in the journal
    When I click Giving on the main menu
    And I click on Add a Gift or Pledge on the giving menu
    And I click Search for an Account
    And type 'Raymond Barnes' into the search field in popup
    And click Find in popup
    And select 'Raymond Barnes' in popup
    And set the date to '9/30/2090'
    And set the Received Amount to '500.00'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Capital'
    And set the Approach to 'Direct Mail'
    And set the Gift Type to 'Check'
    And set the Check Date to '9/30/2090'
    And set the Check Number to '1346'
    #  !!!!!!!!!!!!!! Cindy Grant doesn't exist !!!!!!!!!!!!!!!!!!
    And I set the Tribute Information to 'Cindy Grant'
    And I set the Soft Credit Information to 'Anne Hatch'
    And the Soft Credit Amount to '500.00'
    And I click Save And 'Edit'
    Then the gift should save properly on 'Raymond Barnes''s account
    And the date should be set to '9/30/2090'
    And the Received Amount should be set to '$500.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Capital'
    And the Gift Type should be set to 'Check'
    And the Check Date should be set to '9/30/2090'
    And the Check Number should be set to '1346'
    And I click the Tribute bar
    And the Tribute Information should be set to 'Cindy Grant'
    And the Soft Credit Information should be set to 'Anne Hatch'
    And the Soft Credit Amount should be set to '$500.00'
    And I click Delete on the transaction page
    Then I should see the message '0 Journal Entries' on the journal page




  Scenario: Add a gift through quick gift entry, pulling by account number
    When I click Giving on the main menu
    And I click on Add a Gift or Pledge on the giving menu
    And set the Account Number field to '42'
#    And tab into the Date field   !!!!!!!!!!!!!!!!!!!!!! How do we want to distinguish tabs? !!!!!!!!!!!!!!!!!!!!!!!!!!!
    And set the date to '9/15/2090'
    And set the Received Amount to '250'
    And set the Fund to 'Unrestricted'
    And set the Campaign to 'Capital'
    And set the Approach to 'Direct Mail'
    And set the Gift Type to 'Check'
    And set the Check Date to '9/15/2090'
    And set the Check Number to '473'
    And I click Save And 'Edit'
    Then the gift should save properly on 'Raymond Barnes''s account
    And the date should be set to '9/15/2090'
    And the Received Amount should be set to '$250.00'
    And the Fund should be set to 'Unrestricted'
    And the Campaign should be set to 'Capital'
    And the Approach should be set to 'Direct Mail'
    And the Gift Type should be set to 'Check'
    And the Check Date should be set to '9/15/2090'
    And the Check Number should be set to '473'
    And I click Delete on the transaction page
    Then I should see the message '0 Journal Entries' on the journal page
