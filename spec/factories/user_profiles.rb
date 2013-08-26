# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_profile do
    sequence(:name) { |n| "#{Faker::Name.name}_#{n}" }
    bio { Faker::Lorem.paragraph }
    location { "#{Faker::Address.city},#{Faker::Address.state}" }
    url { Faker::Internet.url }
    user
  end
end
