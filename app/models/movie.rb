class Movie < ApplicationRecord
  has_many :movie_person_roles

  validates :title, :release_date, presence: true
end
