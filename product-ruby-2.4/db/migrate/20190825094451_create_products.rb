class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :upc
      t.string :name
      t.integer :price
      t.integer :weight

      t.timestamps
    end
  end
end
