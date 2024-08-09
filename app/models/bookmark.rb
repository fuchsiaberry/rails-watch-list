class Bookmark < ApplicationRecord
  # associations
  belongs_to :movie
  belongs_to :list

  # validations
  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: {
    scope: :movie,
    message: 'This movie exists'
  }
end
