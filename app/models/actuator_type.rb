class ActuatorType < ActiveRecord::Base
  has_many :actuators, foreign_key: 'actuator_type_id'
end
