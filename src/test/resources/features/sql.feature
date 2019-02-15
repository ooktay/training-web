Feature:

  Background:

  Scenario: select from DB
    When I execute test customer sql
    Then I verify the customername equals "Havel & Zbyszek Co"

  @dene1
  Scenario: multiple rows
    When I execute two customers sql
    Then I verify the results with columns:
    | customername                 |
    | Mini Gifts Distributors Ltd. |
    | Havel & Zbyszek Co           |
