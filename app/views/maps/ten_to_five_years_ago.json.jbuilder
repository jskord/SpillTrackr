json.array! @ten_to_five_years_ago.each do |spill|
  json.id spill.id
  json.latitude spill.latitude 
  json.longitude spill.longitude
  json.date_incident spill.date_incident
  json.county spill.county
  json.contaminant spill.contaminant
  json.volume spill.volume
  json.unit spill.units
  json.contained spill.contained
  json.incident_url spill.incident_url
end