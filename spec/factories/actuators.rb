require 'faker'
FactoryGirl.define do 
	factory :actuator do
	ref {Faker::Name.first_name}
	actuator_type
	green_kub_box
	end
	factory :invalid_actuator do
		name nil
	end
end