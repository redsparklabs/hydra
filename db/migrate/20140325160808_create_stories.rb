class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :description
      t.integer :impact
      t.integer :effort
      t.integer :product_id
      t.integer :persona_id

      t.timestamps
    end
  end
end
