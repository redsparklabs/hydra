class ChangeDefaultValuesForUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :role
  	add_column :users, :role, :string
  end

  def down
  end
end
