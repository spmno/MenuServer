class CreateDishKinds < ActiveRecord::Migration
  def change
    create_table :dish_kinds do |t|
      t.string :name

      t.timestamps
    end
  end
end
