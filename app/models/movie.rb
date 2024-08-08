class Movie < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :restrict_with_error

  # validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
