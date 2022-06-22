class Movie < ApplicationRecord
  belongs_to :movie_director
  validates :name, presence: true
  validates :year, presence: true, length: { maximum: 4 }, numericality: { less_than: 2023 }
end
