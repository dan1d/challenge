class MoviePersonRole < ApplicationRecord
  belongs_to :person
  belongs_to :movie
  enum role_type: [:actor, :actress, :director, :producer]

  validates :person, :movie, :role_type, presence: true
end
