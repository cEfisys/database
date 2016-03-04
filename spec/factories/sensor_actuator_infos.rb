require 'faker'
FactoryGirl.define do 
	factory :sensor_actuator_info do
	value Faker::Number.number(6)
	date Faker::Date.between(2.days.ago, Date.today)
	sensor
	end
	factory :invalid_sensor_actuator_info do
		name nil
	end
end