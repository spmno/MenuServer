class CreateDisplayItems < ActiveRecord::Migration
  def change
    create_table :display_items do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.integer :height
      t.integer :dish_id
      t.integer :page_id

      t.timestamps
    end
  end
end
