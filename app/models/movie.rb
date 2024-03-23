class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :lists

  validates :title, uniqueness: true
  validates :title, :overview, presence: true
end
