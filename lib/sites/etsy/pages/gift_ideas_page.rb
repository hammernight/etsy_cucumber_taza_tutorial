require 'taza/page'

module Etsy
  class GiftIdeasPage < ::Taza::Page

    element(:facebook_button) { browser.link(:id => 'connect-button') }
    element(:recommendations) { browser.div(:class => 'nag-body').h2 }

  end
end