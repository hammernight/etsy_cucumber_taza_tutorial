require 'rubygems'

module Etsy
  class Etsy < ::Taza::Site
    def browse_flow(params={})

    end


    def search_for(item)
      etsy_header.search_text.set item
      etsy_header.search_button.click
    end

    #will add this later to make sure the cart is empty before a test
    def shopping_cart_cleanup

    end
  end
end
