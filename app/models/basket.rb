class Basket < ApplicationRecord
  has_many :zapples

  validates :capacity, presence: true, numericality: {greater_than_or_equal_to: 2, less_than_or_equal_to: 27 }
  validates :fill_rate, presence: true
end
