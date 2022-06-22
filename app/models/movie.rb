class Movie < ApplicationRecord
    belongs_to :director
    validates :name, presence: true
    validates :year, length: { maximum: 4 }, numericality: { less_than_or_equal_to: 2022 }
end
