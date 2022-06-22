class Movie < ApplicationRecord
    belongs_to :director
    validates :name, presence: true
    validates :pubYear, length: { maximum: 4 }, comparison: { less_than: 2022 }
end
