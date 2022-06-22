class Movie < ApplicationRecord
	belongs_to :director
	validates :name, presence: true
	validates :publicationYear, length: { in: 1..4 }, comparison: { less_than: 2023 }
end
