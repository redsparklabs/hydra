class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.text :description
      t.integer :product_id

      t.timestamps
    end
  end
end
