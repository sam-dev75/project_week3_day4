require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'

# give a message to make the user waiting if connection is to low
puts "Wait a second data is coming..."

# Régister URL of the needed website

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

# From the website, get an array of the currencies name and convert it to string
puts "ok, étape 1 !"
puts " " * 2
puts " voila les monnaie"
def name(i)
currency_name_array = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[2]/div/a[1]").map {|x| x.to_s }
end
name(1)

# From the website, get an array of the currencies price and convert it to string

puts "ok, étape 2 !"
puts " " * 2
puts " voila leur valeur"

def value (i)
currency_value_array = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[5]/div/a").map {|x| x.to_s }
end
value()


# Convert the 2 arrays into hash

puts "ok, étape 3 !"
puts " " * 2
puts " voila le hash"

currency_result = Hash[currency_name_array.zip(currency_value_array)]

puts currency_result

puts " thank's, FIN "