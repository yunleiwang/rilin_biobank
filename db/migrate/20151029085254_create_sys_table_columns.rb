class CreateSysTableColumns < ActiveRecord::Migration
  def change
    create_table :sys_table_columns do |t|
      t.string :tname_zn
      t.string :tname_en
      t.string :cname_zn
      t.string :cname_en
      t.integer :order_no

      t.timestamps null: false
    end
  end
end
