require 'open-uri'
require 'nokogiri'
require 'pry'


class BlueBellFlavors::Scraper
  #scraper method - ##all flavors MUST scrape for:
    #size (half gallon), description, and url with nutrition info.

    def self.scrape_our_products
      site = Nokogiri::HTML(open('https://www.bluebell.com/our-products/'))

      all = []

      product = site.css(".products .description.tabs .description__wrapper")
      product.each do |product_info|
        binding.pry
        name = product_info.css(".description__inner .description__aside h4.description__title").text
        size = product_info.css("").text
        description = product_info.css("").text
        nutrition = product_info.css("a").attr("href").text

        product_hash = {:name => name, :size => size, :description => description, :nutrition => nutrition}
        all << product_hash
      end
      all
    end
  end

#scraping for the description of each ice cream flavor
#iterate over each descriptor for the correct listing.

#name = .description__inner .description__aside h4.description__title
#size = .