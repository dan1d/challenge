FactoryBot.define do
  factory :movie do
    title { Faker::Book.title }
    release_date { Date.today }
  end
end
