Before do
  @site = Etsy.new
end
After do
  @site.close
end
Given /^I am searching on Etsy$/ do
  @site.browser.title.should include('Your place to buy and sell all things handmade')
end

Given /^I am on Etsy$/ do
  @site.browser.title.should include('Your place to buy and sell all things handmade')
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
  pending
  @site.etsy_header.search_type(type).click
  @site.search_for(search_item)
end

Then /^I should see "([^"]*)" search results for "([^"]*)"$/ do |search_category, search_item|
  @site.browser.title.should include(search_category)
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
  sleep(3)
end

Then /^the cart is empty$/ do
  @site.shopping_cart_page.empty_cart_message.text.should be_present
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
  @site.advanced_search_page.handmade_sub_category.select sub_category
end

Then /^I should see search results for "([^"]*)"$/ do |search_term|
  @site.advanced_search_page.submit.click
  @site.search_results_page.search_results_message.text.should include(search_term)
end

Given /^I am on Etsy on my mobile device$/ do
  @site.browser.title.should include('Your place to buy and sell all things handmade')
end

When /^I want to browse "([^"]*)"$/ do |new_link|
  p @site.home_page.site_link(new_link)
  sleep 40
  @site.home_page.site_link(new_link).click
end

Then /^i will see "([^"]*)" in the search results$/ do |link_name|
  @site.search_results_page.search_results_message.text.should include(link_name)
end


