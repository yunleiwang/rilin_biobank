class CreateSampleStorages < ActiveRecord::Migration
  def change
    create_table :sample_storages do |t|
      t.integer :position_index
      t.integer :boxer_id
      t.integer :sample_id

      t.timestamps null: false
    end
  end
end
