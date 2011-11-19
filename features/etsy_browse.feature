Feature: Etsy Browse Functionality
  In order to show the browsing cart functionality
  As a user
  I want to browse in a gallery

  Scenario: Browsing around the site for items
    Given I am on Etsy
    When I want to browse through a treasury gallery
    Then results will be displayed in the gallery

  Scenario: Browsing around the site for items
    Given I am on Etsy
    When I want to browse through a pounce
    Then i will be on the pounce page


  Scenario: Browsing around the site for items
    Given I am on Etsy on my mobile device
    When I want to browse "Quilts"
    Then i will see "Quilts" in the search results


  Scenario Outline: link checking
    Given I am on Etsy on my mobile device
    When I want to browse "<link name>"
    Then i will see "<link name>" in the search results

  Examples:
    | link name            |
    | Accessories          |
    | Art                  |
    | Bags and Purses      |
    | Bath and Beauty      |
    | Books and Zines      |
    | Candles              |
    | Ceramics and Pottery |
    | Children             |
    | Clothing             |
    | Crochet              |
    | Dolls and Miniatures |
    | Everything Else      |
    | Furniture            |
    | Geekery              |
    | Glass                |
    | Holidays             |
    | Housewares           |
    | Jewelry              |
    | Knitting             |
    | Music                |
    | Needlecraft          |
    | Paper Goods          |
    | Patterns             |
    | Pets                 |
    | Plants and Edibles   |
    | Quilts               |
    | Supplies             |
    | Toys                 |
    | Vintage              |
    | Weddings             |
    | Woodworking          |

