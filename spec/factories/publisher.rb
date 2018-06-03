FactoryBot.define do
  factory :publisher do
    name { Faker::Lorem.word }
    city { Faker::Lorem.word }
    description { Faker::Lorem.sentence(4, true) }
  end
end
