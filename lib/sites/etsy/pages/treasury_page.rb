require 'rubygems'
require 'taza/page'

module Etsy
  class TreasuryPage < ::Taza::Page

    element(:page_title) { browser.title }
    element(:results) { browser.div(:class => 'list-treasury') }

  end
end
