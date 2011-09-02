Feature: Etsy Cart Functionality
  In order to show the basic cart functionality
  As a user
  I want to add and remove items from the cart


  Scenario: Item can be added to then removed from cart
    Given I am on Etsy
    When I add an item to my cart
    Then the cart contains that item

  Scenario: Existing item can be removed from the cart
    Given I am on the Etsy cart page
    When I remove the item from the cart
    Then the cart is empty

  Scenario: Adding and removing item in the same session
    Given I am on Etsy
    And I have an item in my cart
    When I remove the item from the cart
    Then the cart is empty