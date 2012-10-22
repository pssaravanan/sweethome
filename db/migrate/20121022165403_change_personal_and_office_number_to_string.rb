class ChangePersonalAndOfficeNumberToString < ActiveRecord::Migration
  def up
    change_column :users, :personal_number, :string
    change_column :users, :office_number, :string
  end

  def down
    change_column :users, :personal_number, :integer
    change_column :users, :office_number, :integer
  end
end
