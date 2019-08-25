class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :auther_id
      t.string :product_upc
      t.decimal :score
      t.string :body

      t.timestamps
    end
  end
end
