require 'rubygems'
require 'taza/page'

module Etsy
  class SearchResultsPage < ::Taza::Page
    element(:results_list) { browser.ul(:class => 'listings') }

    element(:first_result) { browser.ul(:class => 'listings').li(:index => 1) }
    element(:first_result_link) { browser.ul(:class => 'listings').li(:index => 1).link(:class => 'listing-thumb') }
    element(:search_results_message) { browser.h1(:class => 'summary').li }

    element(:side_navigation) { browser.div(:class => "section category-nav") }
    element(:search_filter) { |filter_name| side_navigation.span(:class => "text", :text => filter_name) }
    element(:search_filter_radio) { |search_filter_name| search_filter(search_filter_name).parent.parent.radio }

  end
end