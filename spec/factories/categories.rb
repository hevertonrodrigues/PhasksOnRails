# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
		type '1'
		name Faker::Name.name
		description Faker::Lorem.paragraph
  end
end
