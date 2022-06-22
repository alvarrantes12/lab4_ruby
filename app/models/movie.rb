class Movie < ApplicationRecord
  validates :name,  presence: true
  validates :premiere_date, length: {maximum:4}, presence: true, numericality: { greater_than_or_equal_to: 1895, less_than_or_equal_to: 2022 }
  belongs_to :director
end
