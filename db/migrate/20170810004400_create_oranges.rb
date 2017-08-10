class CreateOranges < ActiveRecord::Migration[5.0]
  def change
    create_table :oranges do |t|
      t.string :title, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
