require 'faker'
FactoryGirl.define do 
	factory :actuator_type do
	name {Faker::Name.first_name}
	caracteristics {Faker::Commerce.product_name}
	end
	factory :invalid_actuator_type do
		name nil
	end
end