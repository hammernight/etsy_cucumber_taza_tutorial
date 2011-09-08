require 'spec/spec_helper'
require 'etsy'

describe "HomePage" do
  let(:etsy) { Etsy.new }
  before(:each) do
    etsy.home_page
  end

  after(:each) do
    etsy.close
  end

  it "should be on the right page" do
    etsy.home_page.page_title.should == "Etsy - Your place to buy and sell all things handmade, vintage, and supplies"
  end

  context "treasury search" do
    it "should go to the treasury and display the gallery" do
      etsy.home_page.treasury_link.click
    end
  end
end
