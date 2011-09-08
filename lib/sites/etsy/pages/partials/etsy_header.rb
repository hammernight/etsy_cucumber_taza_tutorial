require 'rubygems'
require 'taza/page'

module Etsy
  class EtsyHeader < ::Taza::Page
    element(:nav_community) { browser.div(:id => 'header').link(:text => 'Community') }
    element(:nav_events) { browser.div(:id => 'header').link(:text => 'Events') }
    element(:nav_online_labs) { browser.div(:id => 'header').link(:text => 'Online Labs') }
    element(:nav_teams) { browser.div(:id => 'header').link(:text => 'Teams') }
    element(:nav_forums) { browser.div(:id => 'header').link(:text => 'Forums') }
    element(:nav_help) { browser.div(:id => 'header').link(:text => 'Help') }

    element(:buy_link) { browser.link(:title => 'Buy on Etsy') }
    element(:sell_link) { browser.link(:title=> 'Sell on Etsy') }

    element(:main_etsy_link) { browser.div(:id => 'header').h1(:id => 'etsy').link(:text => 'Etsy') }

    element(:register_link) { browser.link(:id => 'register') }
    element(:sign_in_link) { browser.link(:id => 'sign-in') }
    element(:shopping_cart_link) { browser.link(:title => 'Your Shopping Cart') }

    element(:search_drop_down){ browser.div(:id => "search-facet")}
    element(:search_label){ browser.label(:for => 'search-query')}
    element(:search_type){ |search_type|  browser.li(:text => "#{search_type}")}
    element(:search_text) { browser.div(:class => 'input-group').text_field(:id => 'search-query') }
    element(:search_button) { browser.div(:class => 'input-group').button(:id => 'search_submit') }

  end




end