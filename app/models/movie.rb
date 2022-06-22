class Movie < ApplicationRecord
    validates :name, presence: true
    validates :year,length:{ in:1..4 },numericality: {only_integer: true, less_than_or_equal_to:2022}, presence: true
    belongs_to :director
end
