require 'rubygems'
require 'taza/page'

module Etsy
  class HomePage < ::Taza::Page

    element(:page_title) { browser.title }
    element(:etsy_home) { browser.link(:text => 'Etsy') }

    element(:treasury_link) { browser.link(:title=> 'Treasury') }
    element(:pounce_link) { browser.link(:title=> 'Pounce') }
    element(:buy_link) { browser.link(:title => 'Buy on Etsy') }
    element(:sell_link) { browser.link(:title=> 'Sell on Etsy') }
    element(:shopping_cart) { browser.link(:title=> 'Your Shopping Cart') }

    element(:nav_community) { browser.div(:id => 'nav').link(:text => 'Community') }
    element(:nav_events) { browser.div(:id => 'nav').link(:text => 'Events') }
    element(:nav_online_labs) { browser.div(:id => 'nav').link(:text => 'Online Labs') }
    element(:nav_teams) { browser.div(:id => 'nav').link(:text => 'Teams') }
    element(:nav_forums) { browser.div(:id => 'nav').link(:text => 'Forums') }
  end
end
