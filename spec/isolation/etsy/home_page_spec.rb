require 'spec/spec_helper'
require 'etsy'

describe "HomePage" do
  let(:etsy) { Etsy.new }

  it "should be on the right page" do
    etsy.home_page
    etsy.home_page.page_title.should == "Etsy - Your place to buy and sell all things handmade, vintage, and supplies"
    etsy.close
  end

  context "treasury search" do
    it "should go to the treasury and display the gallery" do
      etsy.home_page
      etsy.home_page.treasury_link.click
      etsy.treasury_page.results.should be_present
      etsy.close
    end
  end

  context "home_page basics" do
    it "should show the Handpicked Items" do
      etsy.home_page
      etsy.close
    end
  end

  context "adding items to cart" do
    it "adds an item to the cart"
    it "adds two items to the cart"
    it "adds two items to the cart and removes one"
    end


end
