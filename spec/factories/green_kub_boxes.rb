require 'faker'
FactoryGirl.define do 
	factory :green_kub_box do
	Serial_Number {Faker::Name.first_name}
	model
	user
	end
	factory :invalid_green_kub_box do
		name nil
	end
end