FactoryBot.define do
  factory :rating do
    vote { Faker::Number.between(1, 5) }
    author

    trait :for_book do
      author nil
      book
    end
  end
end
