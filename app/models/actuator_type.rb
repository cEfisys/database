class ActuatorType < ActiveRecord::Base
  has_many :actuators
  self.primary_key = 'actuator_type_id'
end
