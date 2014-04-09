class AddUserIdToPersonas < ActiveRecord::Migration
  def change
    add_column :personas, :user_id, :integer
  end
end
