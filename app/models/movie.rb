class Movie < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :restrict_with_error
  has_many :lists, through: :bookmarks

  # validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :list, uniqueness: { scope: :list }
end
