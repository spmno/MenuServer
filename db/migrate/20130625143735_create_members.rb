class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.decimal :balance
      t.integer :level_id

      t.timestamps
    end
  end
end
