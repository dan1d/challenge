FactoryBot.define do
  factory :movie_person_role do
    person
    movie
    actor

    trait :actor do
      role_type { :actor }
    end
    
    trait :actress do
      role_type { :actress }
    end
    
    trait :director do
      role_type { :director }
    end

    trait :producer do
      role_type { :producer }
    end
  end
end
