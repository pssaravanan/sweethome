class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :door_no
      t.string :street
      t.string :city
      t.integer :pincode, :limit => 6
      t.integer :parent_id
      t.string :parent_type
      t.timestamps
    end
  end
end
