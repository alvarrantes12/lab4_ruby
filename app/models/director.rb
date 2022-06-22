class Director < ApplicationRecord
  has_many :movies, dependent: :destroy
  validates :name, presence: true
  validates :last_name, presence: true
end
