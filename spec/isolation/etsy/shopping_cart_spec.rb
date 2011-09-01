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
      etsy.shopping_cart_page.page_title.should == "Etsy - Shopping Cart"
      # etsy.shopping_cart_page.checkout_area.exists?
      etsy.close
    end
  end

  context "view shopping cart" do
    it "is empty"
    it "containts items" do
      etsy.home_page
      etsy.etsy_header.shopping_cart_link.click
      etsy.shopping_cart_page.first_checkout_item.should be_present
      etsy.close
    end

    it "contains items and allows me to remove one" do
      etsy.home_page
      etsy.etsy_header.shopping_cart_link.click
      p etsy.shopping_cart_page.cart_header.text

      etsy.shopping_cart_page.remove_from_cart.click
      sleep(5)
      p etsy.shopping_cart_page.cart_header.text


    end
=begin
    puts "checkout area"
      #p etsy.shopping_cart_page.checkout_area.exists?
       etsy.shopping_cart_page.checkout_area.html
      #p etsy.shopping_cart_page.item_id.attribute_value("value")


      puts "first item in cart"
      #p etsy.shopping_cart_page.first_checkout_item.exists?
      #p etsy.shopping_cart_page.first_checkout_item.html
=end
  end


end
