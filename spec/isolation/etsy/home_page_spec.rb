require 'spec/spec_helper'
require 'etsy'

describe "HomePagePage" do
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
      etsy.treasury.results.should be_present
      etsy.close
    end
  end


end
