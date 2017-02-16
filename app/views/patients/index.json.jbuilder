json.array! @patients.each do |patient|
  json.first_name patient.first_name
  json.last_name patient.last_name
  json.birthdate patient.birthdate
  json.email patient.email

  end 
