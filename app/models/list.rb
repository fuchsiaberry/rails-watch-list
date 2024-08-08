class List < ApplicationRecord
  # associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # validations
  validats :name, presence: true, uniqueness: true
end
