require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
page.css("//tr/td/a").each do |value|
    array_list = Array.new
    array_list.push(value.text)
    return array_list.text
end

puts array_list.text



