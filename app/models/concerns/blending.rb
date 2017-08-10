module Blending
  extend ActiveSupport::Concern

  included do
    after_save :make_juice, if: :should_blend?
  end

  def should_blend?
    self.class.ancestors.first.to_s === "Apple"
  end

  def make_juice
    puts "Juice is made!"
  end
end
