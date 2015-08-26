class CreateBoxers < ActiveRecord::Migration
  def change
    create_table :boxers do |t|
      t.string :box_name
      t.string :box_seq
      t.integer :box_row
      t.integer :box_column
      t.text :remark

      t.timestamps null: false
    end
  end
end
