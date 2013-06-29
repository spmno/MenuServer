class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :dish_id
      t.integer :discount
      t.integer :count

      t.timestamps
    end
  end
end
