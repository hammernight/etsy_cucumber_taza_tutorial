require 'spec/spec_helper'
require 'etsy'

describe "Shopping Cart" do
  let(:etsy) { Etsy.new }

  context "adding items to the cart" do
    after(:each) do
      etsy.remove_item_from_cart
      etsy.close
    end

    it "allows me to add an item to the cart" do
      etsy.home_page
      etsy.etsy_header.search_text.set 'hat'
      etsy.etsy_header.search_button.click
      etsy.search_results_page.first_result_link.click
      etsy.item_detail_page.add_to_cart_button.click
      etsy.shopping_cart_page.cart_header.text.should == "1 item in your cart"

    end

    it "allows me to add an item to the cart using flows" do
      etsy.home_page
      etsy.search_for('shirt')
      etsy.search_results_page.first_result_link.click
      etsy.item_detail_page.add_to_cart_button.click
      etsy.shopping_cart_page.page_title.should == "Etsy - Shopping Cart"
      etsy.shopping_cart_page.cart_header.text.should == "1 item in your cart"

    end
  end

  context "view shopping cart" do
    it "is empty" do
      etsy.home_page
      etsy.etsy_header.shopping_cart_link.click
      etsy.shopping_cart_page.empty_cart_message.text.should be_present
      etsy.close
    end
  end

  context "with existing items" do
    before(:each) do
      etsy.home_page
      etsy.add_items_to_cart("shirt")
    end

    after(:each) do
      etsy.remove_item_from_cart
      etsy.close
    end

    it "containts items" do
      etsy.etsy_header.shopping_cart_link.click
      etsy.shopping_cart_page.first_checkout_item.should be_present
      etsy.shopping_cart_page.cart_header.text.should == "1 item in your cart"
    end

    it "contains items and allows me to remove one" do
      etsy.etsy_header.shopping_cart_link.click
      etsy.shopping_cart_page.remove_from_cart.click
      etsy.shopping_cart_page.cart_header.text.should == "1 item in your cart"
    end
  end
end

