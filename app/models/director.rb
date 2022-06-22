class Director < ApplicationRecord

    validates :name, presence: true
    validates :last_name, presence: true

    has_many :movies
end
