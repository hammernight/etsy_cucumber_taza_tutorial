Feature: Etsy Search Functionality
  In order to search for a certain type of item
  As a user
  I want to search for an item


 Given I am searching on Etsy
    When I search for "hat"
    Then I should see "Search Results" search results for "hat"