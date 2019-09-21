class MoviePersonRole < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  enum role_type: {
    actor: 0,
    actress: 1,
    director: 2,
    producer: 3
  }

  validates :person, :movie, :role_type, presence: true

  scope :person_attributes, -> { joins(:person).select("people.first_name, people.last_name, person_id") }
  scope :movie_attributes, -> { joins(:movie).select("movies.title, movies.release_date, movie_id") }
  scope :casting, -> { where(role_type: [0,1]) }
end
