class Movie < ApplicationRecord
  has_many :movie_person_roles

  validates :title, :release_date, presence: true

  delegate :casting, :directors, :producers, to: :movie_person_roles

  def release_date_roman
    release_date.year.roman
  end
end
