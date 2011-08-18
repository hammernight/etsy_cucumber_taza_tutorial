$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'taza'
require 'etsy'
require 'watir'

ENV["TAZA_ENV"] ||= 'isolation'
