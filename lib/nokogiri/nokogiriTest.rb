require 'nokogiri'
require 'open-uri'

url = 'http://www.ndhealth.gov/ehs/foia/spills/'

page = Nokogiri::HTML(open(url))    

data = page.xpath('//tr//td')

s = Spill.new
s.IncidentURL = data[0].content
raw_date_reported = data[1].content
s.DateReported = "#{raw_date_reported[1]}/#{raw_date_reported[0]}/#{raw_date_reported[2]}"
raw_date_incident = data[2].content
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

p Spill.last