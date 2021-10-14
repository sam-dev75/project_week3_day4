require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

# give a message to make the user waiting if connection is to low
puts "Wait a second data is coming..."

puts "etape 1"
puts " "
puts "here is the fist coin and his value "

def find_name_value(i)
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))   
crypto_name = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[2]/div/a[1]")
crypto_value = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[5]/div/a")
return crypto_name.text => crypto_value.text
end

puts find_name_value (1)

puts "etape 2"
puts " "
puts "here are the 20 first coins and their value"
def hash
currency_result = Hash[crypto_name.zip(crypto_value)]
end

hash()


