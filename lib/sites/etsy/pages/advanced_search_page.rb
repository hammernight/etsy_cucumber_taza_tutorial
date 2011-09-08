require 'taza/page'

module Etsy
  class AdvancedSearchPage < ::Taza::Page
    element(:search_text) {browser.text_field(:id => 'search_query')}
    element(:search_category) {browser.select_list(:name => 'search_type')}
    element(:handmade_sub_category) {browser.select_list(:class => 'handmade')}
    element(:vintage_sub_category) {browser.select_list(:class => 'vintage')}
    element(:supplies_sub_category) {browser.select_list(:class => 'supplies')}

    element(:select_all) { browser.link(:text => 'all')}
    element(:select_tags) { browser.checkbox(:id => 'tags')}
    element(:select_titles) { browser.checkbox(:id => 'titles')}
    element(:select_materials) { browser.checkbox(:id => 'materials')}

    element(:from_price){browser.text_field(:name => 'min')}
    element(:to_price){browser.text_field(:name => 'max')}
    element(:country_list){browser.select_list(:id => 'ship_to_advanced')}

    element(:sort_order) {browser.select_list(:id => 'sortorder')}

    element(:gallery_results){browser.radio(:id => 'gallery')}
    element(:list_results){browser.radio(:id => 'list')}

    element(:submit){browser.button(:title => 'Search')}
  end

end