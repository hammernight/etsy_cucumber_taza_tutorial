require 'rubygems'
require 'taza/page'

module Etsy
  class HomePage < ::Taza::Page

    element(:page_title) { browser.title }

    element(:treasury_link) {browser.link(:title=> 'Treasury')}

  end
end
