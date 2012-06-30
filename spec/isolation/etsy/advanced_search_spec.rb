require 'spec_helper'
require 'etsy'


describe "Advanced search" do

  before(:each) do
    etsy.home_page
  end

  after(:each) do
    etsy.close
  end
  let(:etsy) { Etsy.new }

  context "from the Advanced search page" do

    it "lets me do an advanced search" do
      pending "functionality no longer exists"
      etsy.etsy_header.buy_link.click
      etsy.buy_page.advanced_search.click
      etsy.advanced_search_page.search_text.set "hat"
      etsy.advanced_search_page.search_category.select "Handmade Items"
      etsy.advanced_search_page.handmade_sub_category.select "Art"
      etsy.advanced_search_page.select_all.click
      etsy.advanced_search_page.from_price.set "1.00"
      etsy.advanced_search_page.to_price.set "100.00"
      etsy.advanced_search_page.country_list.select "United States"
      etsy.advanced_search_page.sort_order "Price: High to Low"
      etsy.advanced_search_page.submit.click
      etsy.search_results_page.search_results_message.text.should include('hat')
    end

    it "lets me do an advanced search with a flow using default data" do
      pending "functionality no longer exists"
      etsy.etsy_header.buy_link.click
      etsy.buy_page.advanced_search.click
      etsy.handmade_advanced_search
      etsy.search_results_page.search_results_message.text.should include("hat")
    end

    it "lets me do an advanced search with a flow " do
      pending "functionality no longer exists"
      etsy.etsy_header.buy_link.click
      etsy.buy_page.advanced_search.click
      etsy.handmade_advanced_search('shirt', '5.00', '50.00', 'Canada')
      etsy.search_results_page.search_results_message.text.should include("shirt")
    end
  end


  context "from the top navigation" do
    it "lets me change the item type" do
      etsy.etsy_header.search_drop_down.click
      etsy.etsy_header.search_type("Supplies").when_present.click
      etsy.etsy_header.search_text.set "belt"
      etsy.etsy_header.search_button.click
      etsy.search_results_page.search_filter_radio("Supplies").checked?.should be_true
    end
  end
end
