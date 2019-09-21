[Movie, Person, MoviePersonRole].map(&:delete_all)

admin = Admin.create(email: "test@admin.com", password: "testadmin")

movies = FactoryBot.create_list(:movie, 10)
persons = FactoryBot.create_list(:person, 10)

movies.each do |movie|
  persons.index(persons.sample).times do |index|
    role = [:actor, :actress, :producer].sample
    FactoryBot.create(:movie_person_role, role, person: persons[index], movie: movie)
  end
  FactoryBot.create(:movie_person_role, :director, person: persons.sample, movie: movie)
end
