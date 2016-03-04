require 'faker'
FactoryGirl.define do 
	factory :sensor_type do
	name {Faker::Name.first_name}
	caracteristics {Faker::Commerce.product_name}
	unit {Faker::Address.country_code}
	end
	factory :invalid_sensor_type do
		name nil
	end
end