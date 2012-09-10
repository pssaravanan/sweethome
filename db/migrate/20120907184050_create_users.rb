class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :personal_number
      t.integer :office_number
      t.timestamps
    end
  end
end
