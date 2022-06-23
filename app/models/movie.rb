class Movie < ApplicationRecord
    belongs_to :director
    validates :name, presence: true
    validates :publication_year, presence: true, length: {maximum: 4}, comparison: { less_than: 2023 }
end
