class CreateApples < ActiveRecord::Migration[5.0]
  def change
    create_table :apples do |t|
      t.string :title, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
