require 'rubygems'
require 'taza/page'

module Etsy
  class HomePage < ::Taza::Page

    element(:page_title) { browser.title }
    element(:etsy_home) { browser.link(:text => 'Etsy') }

    element(:treasury_link) { browser.link(:title=> 'Treasury') }
    element(:side_bar_link) { |link_text| browser.link(:title => "#{link_text}") }

  end
end
