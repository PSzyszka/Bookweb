FactoryBot.define do
  factory :genre do
    name { Faker::Lorem.word }

    # trait :with_books do
    #   after(:create) do |genre|
    #     create_list :book, 7, genre: genre
    #   end
    # end
  end
end
