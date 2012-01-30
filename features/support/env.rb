$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'taza'
require 'etsy'
require 'watir-webdriver'

ENV["TAZA_ENV"] ||= 'isolation'

(ENV['BROWSER'] ||= 'firefox').downcase

module Taza
  class Browser
    def self.create_watir_webdriver(params)
      require 'watir-webdriver'
      if ENV['BROWSER'] == 'chrome'
        Watir::Browser.new params[:browser], :switches =>[params[:switches]], :profile => params[:profile]
      elsif ENV['BROWSER'] == 'firefox'
        driver = Selenium::WebDriver.for params[:browser].to_sym, :profile => params[:profile]
        Watir::Browser.new(driver)
      else
        Watir::Browser.new params[:browser]
      end
    end

  end
end