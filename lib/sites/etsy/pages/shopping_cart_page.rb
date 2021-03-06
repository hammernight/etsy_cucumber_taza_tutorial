require 'rubygems'
require 'taza/page'

module Etsy
  class ShoppingCartPage < ::Taza::Page
    element(:etsy_home) { browser.link(:text => 'Etsy') }
    element(:page_title) { browser.title }
    element(:main_shopping_cart) { browser.div(:id => 'primary') }
    element(:cart_header) { browser.div(:id => 'checkout-header').h1 }
    element(:checkout_area) { browser.div(:id => 'checkout') }

    element(:empty_cart) { browser.div(:id => 'newempty').h2 }
    #spinner48.gif
    element(:cart_spinner) { browser.img(:class => 'spinner', :src => '/images/spinners/spinner48.gif') }

    element(:first_checkout_item) { browser.form(:class=>'order') }
    element(:items_list) { browser.div(:id => 'primary') }

    element(:remove_from_cart) { browser.link(:title => 'Remove all items from this shop') }
    element(:item_id) { browser.form(:class => 'order').hidden(:name => 'cart_id') }
  end
end