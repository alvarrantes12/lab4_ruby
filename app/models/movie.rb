class Movie < ApplicationRecord

    validates :name, presence: true
    validates :year, presence: true, length: {maximum: 4}, comparison: {less_than_or_equal_to: 2022}

    belongs_to :director
end
