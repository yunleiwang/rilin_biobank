class CreateFrameStorages < ActiveRecord::Migration
  def change
    create_table :frame_storages do |t|
      t.integer :position_index
      t.integer :frame_id
      t.integer :container_id

      t.timestamps null: false
    end
  end
end
