class List < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  # validations
  validates :name, presence: true, uniqueness: true
end
