class CreateBoxerStorages < ActiveRecord::Migration
  def change
    create_table :boxer_storages do |t|
      t.integer :position_index
      t.integer :boxer_id
      t.integer :frame_id

      t.timestamps null: false
    end
  end
end
