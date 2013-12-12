class CreatePageVersions < ActiveRecord::Migration
  def change
    create_table :page_versions do |t|
      t.string :name

      t.timestamps
    end
  end
end
