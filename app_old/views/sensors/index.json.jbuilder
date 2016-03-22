json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :ref, :state, :sensor_type_id, :greenkub_box_id
  json.url sensor_url(sensor, format: :json)
end
