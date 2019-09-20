class Person < ApplicationRecord
  has_many :movie_person_roles

  validates :first_name, :last_name, presence: true
end
