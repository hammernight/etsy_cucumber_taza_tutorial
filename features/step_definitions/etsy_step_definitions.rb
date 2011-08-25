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
 @site.home_page.shopping_cart.click
end

Given /^that the cart is empty$/ do
  @site.shopping_cart_page.empty_cart.should be_present
end

When /^an item is added to the cart$/ do
  @site.shopping_cart_page.etsy_home.click

end

Then /^the cart contains that item$/ do
  pending # express the regexp above with the code you wish you had
end


=begin

When /^I specify the Knitting sub category$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I search for "([^"]*)"$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see some search results for "([^"]*)"$/ do |search_item|
  pending # express the regexp above with the code you wish you had
end

When /^I specify the Jewelry sub category$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see no search results for "([^"]*)"$/ do |invalid_search_item|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see that the search was for "([^"]*)" instead of "([^"]*)"$/ do |original, modified|
  pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)" search results for "([^"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When /^I remove the item from the cart$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the cart is empty$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I specify the "([^"]*)" sub category$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end
=end
