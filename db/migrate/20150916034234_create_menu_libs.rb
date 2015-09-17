class CreateMenuLibs < ActiveRecord::Migration
  def change
    create_table :menu_libs do |t|
      t.string :name_zh
      t.integer :menu_lib_id
      t.string :link
      t.integer :seq

      t.timestamps null: false
    end
  end
end
