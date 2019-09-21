class Movie < ApplicationRecord
  has_many :movie_person_roles

  validates :title, :release_date, presence: true

  delegate :casting, :directors, :producers, to: :movie_person_roles
end
