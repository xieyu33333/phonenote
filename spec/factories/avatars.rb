# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :avatar do
    content_type "MyString"
    avatar_for "MyString"
    file_name "MyString"
    file_size "MyString"
    avatar_id 1
    avatar "MyString"
  end
end
