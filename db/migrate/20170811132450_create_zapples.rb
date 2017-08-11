class CreateZapples < ActiveRecord::Migration[5.0]
  def change
    create_table :zapples do |t|
      t.integer :basket_id, null: false
      t.string :variety, null: false
    end
  end
end
