FactoryBot.define do
  factory :book do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence(3, true) }
    year_of_release { Faker::Date.between(40.years.ago, Time.zone.today) }
    original_language 'English'
    number_of_pages 3
    translated_into 'German, Polish'
    genre
    author
    publisher
  end
end
