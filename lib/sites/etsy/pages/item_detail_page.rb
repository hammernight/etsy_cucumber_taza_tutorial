require 'rubygems'
require 'taza/page'

module Etsy
  class ItemDetailPage < ::Taza::Page

    element(:page_title) { browser.title }
    element(:item_detail_content) { browser.div(:id => 'content') }


    element(:item_title) { browser.div(:id=> 'item-title') }
    element(:price) { browser.div(:class => 'item-amount') }
    element(:currency) { browser.span(:class => 'currency-code') }

    element(:add_to_cart_button) { browser.div(:class => 'secondary').div(:class => 'buy-button').button(:value => 'Add to Cart') }
    element(:add_to_cart_button_real) { browser.div(:class => 'item-price').div(:class => 'item-actions').button(:type => 'submit') }
    element(:favorite_button) { browser.button(:id => 'favorite-button') }

  end
end
