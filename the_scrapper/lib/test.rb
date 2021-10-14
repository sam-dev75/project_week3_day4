require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

def scrap()
  page = Nokogiri::HTML(RestClient.get('https://coinmarketcap.com/%27)')
      title = page.xpath('//tr[]/td[3]').collect(&:text))
      price = page.xpath('//tr[]/td[4]').collect(&:text)
   a = Hash[title.zip(price)]
  pp a
end
scrap()