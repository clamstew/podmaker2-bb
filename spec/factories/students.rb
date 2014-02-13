# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    image_url "MyString"
    f_name "MyString"
    l_name "MyString"
    github "MyString"
    twitter "MyString"
    email "MyString"
    cohort nil
  end
end
