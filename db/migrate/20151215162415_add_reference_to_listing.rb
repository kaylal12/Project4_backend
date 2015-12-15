class AddReferenceToListing < ActiveRecord::Migration
  def change
    add_reference :listings, :profile, index: true, foreign_key: true
  end
end
