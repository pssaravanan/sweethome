class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.integer :location_id
      t.integer :owner_id
      t.integer :rent_or_sales
      t.integer :amount
      t.string :status
      t.timestamps
    end
  end
end
