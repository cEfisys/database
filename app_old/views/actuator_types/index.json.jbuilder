json.array!(@actuator_types) do |actuator_type|
  json.extract! actuator_type, :id, :name, :caracteristics
  json.url actuator_type_url(actuator_type, format: :json)
end
