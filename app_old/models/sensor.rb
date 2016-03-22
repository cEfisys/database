class Sensor < ActiveRecord::Base
  belongs_to :sensor_type,  foreign_key: 'sensor_type_id'
  has_many :sensor_actuator_infos, foreign_key: 'sensor_actuator_infos_id'
  belongs_to :green_kub_box, foreign_key: 'green_kub_box_id'
end
