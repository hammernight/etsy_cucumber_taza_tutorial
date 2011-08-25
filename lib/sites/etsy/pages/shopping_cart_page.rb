require 'rubygems'
require 'taza/page'

module Etsy
  class ShoppingCartPage < ::Taza::Page
    element(:etsy_home) { browser.link(:text => 'Etsy') }


    element(:page_title) { browser.title }

    element(:main_shopping_cart) { browser.div(:id => 'primary') }
    element(:checkout_area) { browser.div(:id => 'checkout') }
    element(:empty_cart) { browser.div(:id => 'empty-cart') }


  end
end