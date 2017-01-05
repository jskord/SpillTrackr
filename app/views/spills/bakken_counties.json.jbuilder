json.array! @spills_bakken_counties.each do |spill|
  json.id spill.id
  json.Latitude spill.Latitude 
  json.Longitude spill.Longitude
  json.DateIncident spill.DateIncident
  json.County spill.County
  json.Contaminant spill.Contaminant
  json.volume spill.Volume
  json.unit spill.Units
  json.Contained spill.Contained
  json.IncidentURL spill.IncidentURL
end
  