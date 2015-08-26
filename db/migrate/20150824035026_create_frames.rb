class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :frame_seq
      t.string :frame_name
      t.string :frame_type
      t.integer :code_order
      t.integer :horizontal_direction
      t.integer :vertiacal_direction
      t.integer :frame_rows
      t.integer :frame_columns

      t.timestamps null: false
    end
  end
end
