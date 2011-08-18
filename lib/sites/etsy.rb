require 'rubygems'
require 'taza'

module Etsy
  include ForwardInitialization

  class Etsy < ::Taza::Site

    def initialize
      super(:browser => Watir::Browser.new(:firefox))
    end

    def close
      browser.close()
    end

  end
end
