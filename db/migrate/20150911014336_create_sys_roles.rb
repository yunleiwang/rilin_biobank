class CreateSysRoles < ActiveRecord::Migration
  def change
    create_table :sys_roles do |t|
      t.string :name
      t.text :remark

      t.timestamps null: false
    end
  end
end
