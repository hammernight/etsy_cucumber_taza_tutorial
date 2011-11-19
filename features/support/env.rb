$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'taza'
require 'etsy'
require 'watir-webdriver'

ENV["TAZA_ENV"] ||= 'isolation'

require File.join(File.dirname(__FILE__),'web_drivers')

APPEARS_WE_ARE_IN_CI = ENV.has_key? 'WORKSPACE'

# prepend our tools dir to PATH so the chromedriver binary in there is used, rather than any
# random chromedriver that happens to be somewhere on the box
ENV['PATH'] = File.join(File.dirname(__FILE__),'..','..','tools') + ":" + ENV['PATH']

# pass "BROWSER=<browser>" when invoking cucumber to use this.
BROWSER = ( ENV['BROWSER'] || 'chrome' ).downcase.to_sym
launch_webdriver_in_iphone_simulator( APPEARS_WE_ARE_IN_CI ) if( BROWSER == :iphone )
#@site = Selenium::WebDriver.for(
#  BROWSER,
#  :switches => %w[--ignore-certificate-errors]
#)



module SiteHelper
  def site
    @site ||= (Etsy.new @browser)
  end
end

World(SiteHelper)