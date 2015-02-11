Feature: Add Account Classic View

  Scenario: Add new account - all fields populated
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Name to 'John Doe' on the classic add account page
    And I set Sort Name to 'Doe, John' on the classic add account page
    And I set Address Lines to '501 N Pennsylvania Parkway' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46280' on the classic add account page
    And I set County to 'Hamilton' on the classic add account page
    And I set Voice to '317-336-3827' on the classic add account page
    And I set Email to 'qa-1@blackbaud.com' on the classic add account page
    And I set Web Page to 'www.google.com' on the classic add account page
    And I set Note to 'Do not call after 6pm' on the classic add account page
    And I set Short Salutation to 'John' on the classic add account page
    And I set Long Salutation to 'Mr. Doe' on the classic add account page
#    And I set Company to 'Blackbaud' on the classic add account page
#    And I click Save And 'Go to Persona'
#    Then I should be taken to the Persona page of new account
#    And the account should be saved properly

  Scenario: Missing Required Fields
    Given I am logged into eTap
    When I click Accounts
    And I click on Add Account on the find account screen
    And I set Address Lines to '7787 West Pine Ave' on the classic add account page
    And I set City to 'Indianapolis' on the classic add account page
    And I set State to 'IN' on the classic add account page
    And I set Postal Code to '46220' on the classic add account page
    And I set Voice to '317-219-4444' on the classic add account page
    And I set Email to 'qa-1@blackbaud.com' on the classic add account page
#    And I click Save And 'Go to Persona'
#    Then I should see the following error: Account Name: This field must be completed prior to saving. Sort Name: This field must be completed prior to saving.

  Scenario: Deleting an account
    Given I am logged into eTap
    When I click Accounts
    And I type 'Doe' into the search field
    And I click Find
    And I click on John Doe
    And I click on the Other page for John Doe
    And I click Delete Role for John Doe
    And I click Yes for John Doe
    Then I should see the message: 'No Results Found'

