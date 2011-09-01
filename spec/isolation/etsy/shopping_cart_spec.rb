require 'spec/spec_helper'
require 'etsy'

describe "Shopping Cart" do
  let(:etsy) { Etsy.new }

  context "adding items to the cart" do
    it "allows me to add an item to the cart" do
      etsy.home_page
      etsy.etsy_header.search_text.set 'hat'
      etsy.etsy_header.search_button.click
      etsy.search_results_page.first_result_link.click
      etsy.item_detail_page.add_to_cart_button.click
      etsy.close
    end

    it "allows me to add an item to the cart using flows" do
      etsy.home_page
      etsy.search_for('shirt')
      etsy.search_results_page.first_result_link.click
      etsy.item_detail_page.add_to_cart_button.click
      etsy.close
    end
  end


end
