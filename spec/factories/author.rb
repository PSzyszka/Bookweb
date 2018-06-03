FactoryBot.define do
  factory :author do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birth_date  { Faker::Date.birthday(18, 90) }
    description { Faker::Lorem.sentence(3, true) }
  end
end
