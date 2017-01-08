# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'selenium-webdriver'

def get_data(browser)
  doc = Nokogiri::HTML(browser.page_source)
  keys = doc.css("table#GridView1 th").map { |item| item.text }
  data = []
  doc.css("table#GridView1 tr").each do |row|
    row_data = {}
    row.css("td").each_with_index do |item, index|
      row_data[keys[index]] = item.text.strip
    end
    if row_data != {}
      s = Spill.new
      s.IncidentURL = row_data["Incident ID"]
      raw_date_reported = row_data["Date Reported"].split('/')
      s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
      raw_date_incident = row_data["Date Incident6"].split('/')
      s.DateIncident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
      s.County = row_data["County"]
      s.Latitude = row_data["Latitude"]
      s.Longitude = row_data["Longitude"]
      s.Contaminant = row_data["Contaminant"]
      s.Volume = row_data["Volume"]
      s.Units = row_data["Units"]
      s.Contained = row_data["Contained"]
      s.user_id = 1
      s.save
    end
  end
  data
end

url = 'http://www.ndhealth.gov/ehs/foia/spills/defaultArc.aspx'

puts "Creating phantom browswer..."
browser = Selenium::WebDriver.for :phantomjs
puts "Opening url..."
browser.get url

puts "Reading data page 1"
data = get_data(browser)
188.times do |index|
  puts "Reading data page #{index + 2}"
  browser.find_element(css: 'input[value="Next"]').click
  data += get_data(browser)
end

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

puts "Creating phantom browswer..."
browser = Selenium::WebDriver.for :phantomjs
puts "Opening url..."
browser.get url

puts "Reading data page 1"
data = get_data(browser)
19.times do |index|
  puts "Reading data page #{index + 2}"
  browser.find_element(css: 'input[value="Next"]').click
  data += get_data(browser)
end

browser.close

puts "finished!"





# CSV.foreach('/Spill_Seed_File.csv') do |row|
#   url = row[0]
#   reported = row[1]
#   incident = row[2]
#   county = row[3]
#   lat = row[4].to_f
#   long = row[5].to_f
#   contaminant = row[6]
#   volume = row[7].to_i
#   units = row[8]
#   contained = row[9]
#   user_id = row[10].to_i
#   Spill.create(IncidentURL: url, DateReported: reported, DateIncident: incident, County: county, Latitude: lat, Longitude: long, Contaminant: contaminant, Volume: volume, Units: units, Contained: contained, user_id: user_id,) 
# end

# puts "done"

