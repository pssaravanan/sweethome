class DeleteDoorNoFromLocation < ActiveRecord::Migration
  def up
    remove_column :locations, :door_no
    remove_column :locations, :street
    add_column :locations, :address, :text
  end

  def down
    add_column :locations, :door_no, :string
    add_column :locations, :street, :string
    remove_column :locations, :address
  end
end
