class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :container_name
      t.string :container_type_id
      t.integer :code_style
      t.integer :frame_num
      t.integer :container_rows
      t.integer :container_columns

      t.timestamps null: false
    end
  end
end
