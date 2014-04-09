class AddCompletedToStories < ActiveRecord::Migration
  def change
    add_column :stories, :completed, :boolean
  end
end
