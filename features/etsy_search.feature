Feature: Etsy Search Functionality
  In order to search for a certain type of item
  As a user
  I want to search for an item


  Scenario: basic search for an item
    Given I am searching on Etsy
    When I search for "hat"
    Then I should see "handmade" search results for "hat"

  Scenario Outline: : basic search for an item
    Given I am searching on Etsy
    When I search for "<item>" of a specific "<item_type>"
    Then I should see "<item_type>" search results for "<item>"

  Scenarios: Search for item and item type
    | item   | item_type |
    | hat    | handmade  |
    | shirt  | vintage   |
    | brush  | supplies  |
    | george | people    |
    | place  | shops     |