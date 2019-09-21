class Person < ApplicationRecord
  has_many :movie_person_roles

  validates :first_name, :last_name, presence: true

  Gutentag::ActiveRecord.call self

  def full_name
    "#{first_name} #{last_name}"
  end

  def as_director
    movie_person_roles.director.movie_attributes
  end

  def as_producer
    movie_person_roles.producer.movie_attributes
  end

  def as_actor_actress
    movie_person_roles.casting.movie_attributes
  end
end
