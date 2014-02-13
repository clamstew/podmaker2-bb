# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pod do
    building "MyString"
    slot_num 1
    cohort nil
  end
end
