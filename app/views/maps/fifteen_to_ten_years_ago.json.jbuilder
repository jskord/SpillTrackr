json.array! @fifteen_to_ten_years_ago.each do |spill|
  json.id spill.id
  json.latitude spill.latitude 
  json.longitude spill.longitude
  json.dateIncident spill.dateIncident
  json.county spill.county
  json.contaminant spill.contaminant
  json.volume spill.volume
  json.unit spill.units
  json.contained spill.contained
  json.incidentURL spill.incidentURL
end