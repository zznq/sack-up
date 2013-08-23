# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    name Faker::Lorem.word
    description Faker::Lorem.sentences.join('')
  end
end
