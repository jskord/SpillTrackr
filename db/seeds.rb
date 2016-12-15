# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Spill_Seed_File.csv'))

csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')



csv.each do |row|
  s = Spill.new
  s.IncidentURL = row['IncidentURL']
  raw_date_reported = row['DateReported'].split('/')
  s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
  raw_date_incident = row['DateIncident'].split('/')
  s.DateIncident = "#{raw_date_incident[1]}/#{raw_date_incident[0]}/#{raw_date_incident[2]}"
  s.County = row['County']
  s.Latitude = row['Latitude']
  s.Longitude = row['Longitude']
  s.Contaminant = row['Contaminant']
  s.Volume = row['Volume']
  s.Units = row['Units']
  s.Contained = row['Contained']
  s.user_id = row['user_id']
  s.save
end

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

