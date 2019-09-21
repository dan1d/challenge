FactoryBot.define do
  factory :person do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }

    after(:create) do |person|
      (rand(3) + 1).times do
        person.tag_names << Faker::Artist.name
      end
      person.save
    end
  end
end
