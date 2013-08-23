# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| Faker::Internet.email("email#{n}") }
    password { Faker::Internet.password }
  end
end
