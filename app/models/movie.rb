class Movie < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, length: {maximum: 4}, numericality: {less_than_or_equal_to: 2022}
  belongs_to :director
end