class MovieDirector < ApplicationRecord
  has_many :movies
  validates :name, presence: true
  validates :lastname, presence: true
end
