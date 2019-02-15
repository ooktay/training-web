Feature: Eğitim

  Background:

  Given I open browser
      @demotest
      Scenario: Create Bank Account
        Given I open home page
        And I click "Account"
        And I click "Sign in"
        And I wait for 2 seconds
        And I fill:
          | username  | admin |
          | password  | admin |
        And I click SignIn
        And I wait for 2 seconds
        And I click "Entities"
        And I click "Bank Account"
        And I click "Create a new Bank Account"
        And I see bank account new page
        And I fill:
          | field_name | muge |
          | field_balance |  10000  |
          | field_user     | admin |
        And I wait for 2 seconds
        And I click Save





