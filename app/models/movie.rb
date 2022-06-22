class Movie < ApplicationRecord
    validates :name, presence: true
    validates :year, presence: true, numericality: { less_than_or_equal: 2022 }
    belongs_to :director
end
