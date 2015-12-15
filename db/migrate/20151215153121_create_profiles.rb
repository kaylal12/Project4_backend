class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :surname
      t.string :description

      t.timestamps null: false
    end
  end
end
