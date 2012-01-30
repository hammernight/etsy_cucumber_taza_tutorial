require 'rubygems'

module Etsy
  class Etsy < ::Taza::Site
    def remove_item_from_cart
      shopping_cart_page.remove_from_cart.when_present.click
      #shortcut i hate this i need to come back and handle this ajax right
      sleep(2)
    end

    def add_items_to_cart(item)
      etsy_header.search_text.set(item)
      etsy_header.search_button.click
      search_results_page.first_result_link.when_present.click
      item_detail_page.add_to_cart_button.click
    end

  end
end