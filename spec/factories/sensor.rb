require 'faker'
FactoryGirl.define do 
	factory :sensor do
	ref {Faker::Name.first_name}
	sensor_type
	green_kub_box
	end
	factory :invalid_sensor do
		name nil
	end
end