require 'faker'
FactoryGirl.define do 
	factory :model do
	name {Faker::Name.first_name}
	caracteristics {Faker::Commerce.product_name}
	end
	factory :invalid_model do
		name nil
	end
end