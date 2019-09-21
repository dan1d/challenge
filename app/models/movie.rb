class Movie < ApplicationRecord
  has_many :movie_person_roles

  validates :title, :release_date, presence: true

  def casting
    movie_person_roles.casting.person_attributes
  end

  def directors
    movie_person_roles.director.person_attributes
  end

  def producers
    movie_person_roles.producer.person_attributes
  end

  def release_date_roman
    release_date.year.roman
  end
end
