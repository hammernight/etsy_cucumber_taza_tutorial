require 'rubygems'
require 'taza/page'

module Etsy
  class ShoppingCartPage < ::Taza::Page
    element(:etsy_home) { browser.link(:text => 'Etsy') }
    element(:page_title) { browser.title }
    element(:main_shopping_cart) { browser.div(:id => 'primary') }
    element(:cart_header){browser.div(:id => 'checkout-header')}
    element(:checkout_area) { browser.div(:id => 'checkout') }

    element(:empty_cart) { browser.div(:id => 'empty-cart') }


    element(:first_checkout_item) { browser.div(:id => 'checkout').div(:class=>'order') }



  end
end