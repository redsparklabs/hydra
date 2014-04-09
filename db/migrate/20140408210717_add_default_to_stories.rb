class AddDefaultToStories < ActiveRecord::Migration
  def change
    change_column :stories, :completed,  :boolean, :default => false
  end
end
