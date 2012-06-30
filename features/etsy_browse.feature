Feature: Etsy Browse Functionality
  In order to show the browsing cart functionality
  As a user
  I want to browse in a gallery

  Scenario: Browsing around the site for items
    Given I am on Etsy
    When I want to browse through a treasury gallery
    Then results will be displayed in the gallery

  Scenario: Browsing around the site for items for a friend
    Given I am on Etsy
    When I want go to the "Gift Ideas" page
    Then I should see the gifts recommendations "Want smart gift recommendations for Facebook friends?"
    Then I should see the facebook "Get Gift Recommendations" Button
