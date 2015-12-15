class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :address
      t.string :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :price

      t.timestamps null: false
    end
  end
end
