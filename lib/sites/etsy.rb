require 'rubygems'
require 'taza'

module Etsy
  include ForwardInitialization

  class Etsy < ::Taza::Site

    def close
      browser.close
    end

  end
end
