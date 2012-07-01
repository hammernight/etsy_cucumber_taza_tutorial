Before do
  @site = Etsy.new
end
After do

  @site.close
end
Given /^I am searching on Etsy$/ do
  @site.browser.title.should == 'Etsy - Your place to buy and sell all things handmade, vintage, and supplies'
end

Given /^I am on Etsy$/ do
  @site.browser.title.should == 'Etsy - Your place to buy and sell all things handmade, vintage, and supplies'
end

When /^I want to browse through a treasury gallery$/ do
  @site.home_page.treasury_link.click
end

Then /^results will be displayed in the gallery$/ do
  @site.treasury_page.results.should be_present
end


When /^I want to browse through a pounce$/ do
  @site.home_page.pounce_link.click
end

Then /^i will be on the pounce page$/ do
  @site.pounce_page.page_title.should == "Etsy :: Pounce :: Just Sold Items and Undiscovered Shops"
end

Given /^I am on the Etsy cart page$/ do
  @site.etsy_header.shopping_cart_link.click
end

Given /^that the cart is empty$/ do
  @site.shopping_cart_page.empty_cart_message.text.should be_present

end

When /^an item is added to the cart$/ do
  @site.etsy_header.shopping_cart_link.click
end

Then /^the cart contains that item$/ do
  @site.shopping_cart_page.cart_header.text.should == "1 item in your cart"
end

When /^I search for "([^"]*)"$/ do |search_item|
  @site.search_for(search_item)
end

When /^I search for "([^"]*)" of a specific "([^"]*)"$/ do |search_item, type|
  if @site.etsy_header.search_drop_down.exists?
    @site.etsy_header.search_drop_down.when_present.click
    @site.etsy_header.search_type(type).wait_until_present
    @site.etsy_header.search_type(type).when_present.click
  end

  @site.search_for(search_item)
end

Then /^I should see the search results for "([^"]*)"$/ do |search_item|
  @site.browser.title.should include(search_item)
  @site.search_results_page.search_results_message.text.should include(search_item)
end


Given /^I add an item to my cart$/ do
  @site.add_items_to_cart("shirt")
end

Given /^I have an item in my cart$/ do
  @site.add_items_to_cart("belt")
end

When /^I remove the item from the cart$/ do
  @site.shopping_cart_page.remove_from_cart.click
end

Then /^the cart is empty "([^"]*)" should be visible$/ do |message|
  @site.shopping_cart_page.empty_cart.when_present.text.should include(message)
end

Given /^I am performing an advanced search on Etsy$/ do
  @site.home_page
  @site.etsy_header.buy_link.click
  @site.buy_page.advanced_search.click
end

When /^I enter the "([^"]*)"$/ do |search_term|
  @site.advanced_search_page.search_text.set search_term
end

When /^I specify the "([^"]*)" category$/ do |category|
  @site.advanced_search_page.search_category.select category
end

When /^I specify the "([^"]*)" sub category$/ do |sub_category|
  @site.advanced_search_page.handmade_sub_category.wait_until_present
  @site.advanced_search_page.handmade_sub_category.when_present.select sub_category
end

Then /^I should see search results for "([^"]*)"$/ do |search_term|
  @site.advanced_search_page.submit.click
  @site.search_results_page.search_results_message.text.should include(search_term)
end

When /^I want go to the "([^"]*)" page$/ do |link_name|
  @site.home_page.side_bar_link(link_name).click
end

Then /^I should see the facebook "([^"]*)" Button$/ do |link_text|
  @site.gift_ideas_page.facebook_button.text.should include(link_text)
end

Then /^I should see the gifts recommendations "([^"]*)"$/ do |header_text|
  @site.gift_ideas_page.recommendations.text.should include(header_text)
end

Given /^I have items in my cart$/ do
  step "I am on Etsy"
  step "I add an item to my cart"
end
