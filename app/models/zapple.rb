class Zapple < ApplicationRecord
  belongs_to :basket

  validates :variety, presence: true
end
