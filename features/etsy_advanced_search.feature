Feature: Etsy Advanced Search Functionality
  In order to show the advanced search functionality
  As a user
  I want to search for an item in a sub category

  This feature is no longer valid for the etsy site. this functionality has been removed

  @wip
  Scenario Outline: Advanced Search for items in various categories that exist
    Given I am performing an advanced search on Etsy
    When I enter the "<Search Term>"
    And I specify the "<Category>" category
    And I specify the "<Sub Category>" sub category
    Then I should see search results for "<Search Term>"
  Examples:
    | Search Term | Category       | Sub Category |
    | hat         | Handmade Items | Knitting     |
    | shirt       | Vintage Items  | Jewelry      |
    | earring     | Handmade Items | Jewelry      |
