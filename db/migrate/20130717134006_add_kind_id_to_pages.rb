class AddKindIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :dish_kind_id,  :integer
  end
end
