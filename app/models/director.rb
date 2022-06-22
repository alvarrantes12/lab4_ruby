class Director < ApplicationRecord
  validates :firstname,  presence: true
  validates :lastname,  presence: true

  has_many :movies, dependent: :destroy
end
