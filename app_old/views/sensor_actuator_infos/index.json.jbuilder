json.array!(@sensor_actuator_infos) do |sensor_actuator_info|
  json.extract! sensor_actuator_info, :id, :sensor_id, :value, :date
  json.url sensor_actuator_info_url(sensor_actuator_info, format: :json)
end
