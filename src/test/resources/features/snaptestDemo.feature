Feature: Eğitim

  Background:
    Given I open browser

  @dene
  Scenario: Create Bank Account
    Given I am registered with user
    And I open home page
    And I click "Account"
    And I click "Sign in"
    And I wait for 2 seconds
    And I fill:
      | username | my username |
      | password | my password |
    And I click SignIn
    And I wait for 2 seconds
    And I click "Entities"
    And I click "Bank Account"
    And I click "Create a new Bank Account"
    And I see bank account new page
    And I generate 8 characters long numeric text as the account name
    And I fill:
      | field_name    | the account name  |
      | field_balance | the default balance |
      | field_user    | my username |
    And I wait for 2 seconds
    And I click Save





