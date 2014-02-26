# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :color do
		name Faker::Name.name
		hex '#00ff00'
  end
end
