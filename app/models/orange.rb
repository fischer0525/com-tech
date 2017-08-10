class Orange < ApplicationRecord
  validates :title, presence: true
  validates :quantity, presence: true
end
