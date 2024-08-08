class List < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # validations
  validates :name, presence: true, uniqueness: true
end
