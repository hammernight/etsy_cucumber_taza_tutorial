require 'spec/spec_helper'
require 'etsy'

describe "HomePagePage" do
  let(:etsy) {Etsy.new.home_page}

  it "should fail because you haven't written any tests yet" do
      etsy.page_title.should == "Etsy - Your place to buy and sell all things handmade, vintage, and supplies"
  end
end
