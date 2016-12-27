# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'nokogiri'
require 'open-uri'

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

page = Nokogiri::HTML(open(url))    

data = page.xpath('//tr//td')

s = Spill.new
s.IncidentURL = data[0].content
raw_date_reported = data[1].content.split('/')
s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
raw_date_incident = data[2].content.split('/')
s.DateIncident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
s.County = data[3].content
s.Latitude = data[5].content
s.Longitude = data[6].content
s.Contaminant = data[7].content
s.Volume = data[8].content
s.Units = data[9].content
s.Contained = data[10].content
s.user_id = 1
s.save

s = Spill.new
s.IncidentURL = data[11].content.split('/')
raw_date_reported = data[12].content.split('/')
s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
raw_date_incident = data[13].content.split('/')
s.DateIncident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
s.County = data[14].content
s.Latitude = data[16].content
s.Longitude = data[17].content
s.Contaminant = data[18].content
s.Volume = data[19].content
s.Units = data[20].content
s.Contained = data[21].content
s.user_id = 1
s.save

s = Spill.new
s.IncidentURL = data[22].content
raw_date_reported = data[23].content.split('/')
s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
raw_date_incident = data[24].content.split('/')
s.DateIncident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
s.County = data[25].content
s.Latitude = data[27].content
s.Longitude = data[28].content
s.Contaminant = data[29].content
s.Volume = data[30].content
s.Units = data[31].content
s.Contained = data[32].content
s.user_id = 1
s.save

p Spill.last

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

