class Movie < ApplicationRecord
    validates :name, presence: true
    validates :year, presence: true, length:{minumun:4, maximum:4}
    belongs_to :director
end
