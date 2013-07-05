class AddPhotoToDishKinds < ActiveRecord::Migration
  def change
    add_column :dish_kinds, :photo, :string
  end
end
