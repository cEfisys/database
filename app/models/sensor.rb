class Sensor < ActiveRecord::Base
  belongs_to :sensor_type
  belongs_to :green_kub_box
  has_many :sensor_actuator_infos
end
