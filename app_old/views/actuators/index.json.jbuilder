json.array!(@actuators) do |actuator|
  json.extract! actuator, :id, :ref, :state, :actuators_type_id, :greenkub_box_id
  json.url actuator_url(actuator, format: :json)
end
