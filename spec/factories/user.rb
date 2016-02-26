require 'faker'
FactoryGirl.define do 
	factory :user do
	email {Faker::Internet.email}
	password {Faker::Internet.password}
	end
	factory :invalid_user do
		name nil
	end
end