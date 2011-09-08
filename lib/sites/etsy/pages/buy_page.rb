require 'taza/page'

module Etsy
  class BuyPage < ::Taza::Page

    element(:advanced_search) { browser.link(:text => "Advanced Search")}


  end
end