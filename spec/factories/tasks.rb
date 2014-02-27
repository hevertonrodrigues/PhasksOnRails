# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    task "MyString"
    description "MyText"
    status ""
    collaborator nil
  end
end
