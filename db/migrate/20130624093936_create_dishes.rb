class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price
      t.integer :kind_id

      t.timestamps
    end
  end
end
