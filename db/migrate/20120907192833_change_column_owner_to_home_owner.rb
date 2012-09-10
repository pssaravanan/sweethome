class ChangeColumnOwnerToHomeOwner < ActiveRecord::Migration
  def up
    remove_column :homes, :owner_id
    add_column :homes, :home_owner_id, :integer
  end

  def down
    add_column :homes, :owner_id, :integer
    remove_column :homes, :home_owner_id
  end
end
