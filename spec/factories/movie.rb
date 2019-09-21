FactoryBot.define do
  factory :movie do
    title { Faker::Book.title }
    release_date { Faker::Date.backward(days: 5000.days) }
  end
end
