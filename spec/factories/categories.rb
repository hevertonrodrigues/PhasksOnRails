# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    type ""
    name "MyString"
    description "MyText"
  end
end
