Feature: Web 1

  Background:


  Scenario: Using different profiles (persons) for browser
    Given I open browser with profile "clerk"

    And I am registered with user
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



    Given I open browser with profile "approver"

    And I am registered with admin
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

    And I save entity list table row as the approved row where:
      | Name | the account name |

    And I save values of the approved row:
      | ID | the account id |

    And I click "View" in the approved row

    And I see bank account detail page with parameters:
      | id | the account id |

    When I switch to profile "clerk"


  Scenario: switching frames
    Given I open browser
    And I am registered with admin
    And I open home page
    And I click "Account"
    And I click "Sign in"
    And I wait for 2 seconds
    And I fill:
      | username | my username |
      | password | my password |
    And I click SignIn
    And I wait for 2 seconds

    When I open api docs page
    And I switch to inner frame
    And I click "account-resource"

    Then I see "saveAccount"
    And I switch to main window


  Scenario: switching windows
    Given I open browser
    And I am registered with admin
    And I open home page
    And I click "Account"
    And I click "Sign in"
    And I wait for 2 seconds
    And I fill:
      | username | my username |
      | password | my password |
    And I click SignIn
    And I wait for 2 seconds
    And I click "Administration"
    And I click "Database"

    Then I see new window with database page inside
    And I see login element


  Scenario: handling alerts
    Given I open browser
    And I am registered with admin
    And I open home page
    And I click "Account"
    And I click "Sign in"
    And I wait for 2 seconds
    And I fill:
      | username | my username |
      | password | my password |
    And I click SignIn
    And I wait for 2 seconds
    And I click "Administration"
    And I click "Metrics"
    And I see application metrics page
    And I click thread dump

    Then I accept alert
    And I verify the alert message equals "dur bakalim"


  Scenario: timeouts
    Given I open browser

    When I open google home page
    And I fill:
      | query | timer |
    And I click search
    Then I see google search results page
    When I fill:
      | timer box | 5 |
    And I click "Start" in act timer section

    Then I see timer box becomes "0s" in 10 seconds

    And click "OK" in act timer section
