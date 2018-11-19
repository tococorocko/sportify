class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.text :description
      t.string :street
      t.string :city
      t.string :category
      t.integer :price_per_hour
      t.string :picture
      t.text :opening_hours

      t.timestamps
    end
  end
end
