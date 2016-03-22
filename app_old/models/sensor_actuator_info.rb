class SensorActuatorInfo < ActiveRecord::Base
  belongs_to :sensor, foreign_key: 'sensor_id'
end
