class CreateBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets do |t|
      t.integer :capacity, null: false
      t.string :fill_rate, null: false
    end
  end
end
