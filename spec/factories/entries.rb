# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entry do
    user nil
    status "9.99"
    unique_id "MyString"
    duration "9.99"
    score "9.99"
    thumbnail "MyString"
  end
end
