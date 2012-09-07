class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :homes, :location_id
  end

  def down
    add_column :homes, :location_id
  end
end
