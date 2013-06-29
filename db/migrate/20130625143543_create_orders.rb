class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.datetime :order_time
      t.datetime :checkout_time
      t.integer :member_id
      t.integer :table_id

      t.timestamps
    end
  end
end
