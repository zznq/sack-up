# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    sequence(:name) { |n| "#{Faker::Name.name}_#{n}" }
    user { FactoryGirl.create :user }
  end
end
