class AddIconClassToMenuLib < ActiveRecord::Migration
  def change
    add_column :menu_libs, :icon_class, :string
  end
end
