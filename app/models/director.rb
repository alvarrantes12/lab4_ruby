class Director < ApplicationRecord
    has_many :movies, dependent: :destroy
    validates :first_name, presence: true
    validates :last_name, presence: true
end
