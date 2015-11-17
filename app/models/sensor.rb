class Sensor < ActiveRecord::Base
  has_one :sensor_type
  has_one :green_kub_box
  has_many :sensor_actuator_infos
end
