ENV['TAZA_ENV'] = "isolation" if ENV['TAZA_ENV'].nil?
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'mocha'
require 'taza'
require 'selenium-webdriver'
require 'pry'

lib_path = File.expand_path("#{File.dirname(__FILE__)}/../lib/sites")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

(ENV['BROWSER'] ||= 'firefox').downcase

#option HEADLESS=true
if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

RSpec.configure do |config|
  config.mock_with :mocha
end
