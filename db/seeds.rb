[Movie, Person, MoviePersonRole].map(&:delete_all)

movies = FactoryBot.create_list(:movie, 100)
persons = FactoryBot.create_list(:person, 100)

movies.each do
  persons.index(persons.sample).times do |index|
    role = [:actor, :actress, :producer].sample
    FactoryBot.create(:movie_person_role, role, person: persons[index])
  end
  FactoryBot.create(:movie_person_role, :director, person: persons.sample)
end
