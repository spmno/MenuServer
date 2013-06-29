class RenameKindIdColumn < ActiveRecord::Migration
  def up
    rename_column :dishes, :kind_id, :dish_kind_id
  end

  def down
    rename_column :dishes, :dish_kind_id, :kind_id
  end
end
