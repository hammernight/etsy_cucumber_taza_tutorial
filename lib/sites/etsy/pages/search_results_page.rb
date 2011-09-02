require 'rubygems'
require 'taza/page'

module Etsy
  class SearchResultsPage < ::Taza::Page
    element(:results_list) { browser.ul(:class => 'listings')}

    element(:first_result) { browser.ul(:class => 'listings').li(:index => 1)}
    element(:first_result_link) { browser.ul(:class => 'listings').li(:index => 1).link(:class => 'listing-thumb')}
    element(:search_results_message) { browser.h1(:class => 'summary')}

  end
end