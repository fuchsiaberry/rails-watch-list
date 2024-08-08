class Bookmark < ApplicationRecord
  # associations
  belongs_to :movie
  belongs_to :list

  # validations
  validates :comments, length: { minimum: 6 }
  validates :movie, uniqueness: {
    scope: :list,
    message: 'This movie exists'
  }
end
