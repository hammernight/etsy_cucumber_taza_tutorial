require 'rubygems'

module Etsy
  class Etsy < ::Taza::Site

    def handmade_advanced_search(
        item_name='hat',
            min_price='1.00',
            max_price='100.00',
        country_name='United States'
    )
      advanced_search_page.search_text.set item_name
      advanced_search_page.search_category.select "Handmade Items"
      advanced_search_page.handmade_sub_category.select "Art"
      advanced_search_page.select_all.click
      advanced_search_page.from_price.set min_price
      advanced_search_page.to_price.set max_price
      advanced_search_page.country_list.select country_name
      advanced_search_page.sort_order "Price: High to Low"
      advanced_search_page.submit.click
    end

  end
end