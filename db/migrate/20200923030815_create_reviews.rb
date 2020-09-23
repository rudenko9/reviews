class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.string :storage
      t.integer :price
      t.string :date

      t.timestamps
    end
  end
end
