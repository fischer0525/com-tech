class Apple < ApplicationRecord
  validates :title, presence: true
  validates :quantity, presence: true
end
