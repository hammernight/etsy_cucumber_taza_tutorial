require 'rubygems'

module Etsy
  class Etsy < ::Taza::Site

    def add_item_to_cart
      etsy.homepage

    end
  end
end