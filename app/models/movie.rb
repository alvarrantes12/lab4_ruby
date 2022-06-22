class Movie < ApplicationRecord
    
    #validates :name, presence: true
    #validates :publication_year, length:{ maximum:4 }, numericality:{only_integer: integer, less_than: 2022}

    belongs_to :director
end
