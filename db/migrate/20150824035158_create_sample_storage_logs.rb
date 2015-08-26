class CreateSampleStorageLogs < ActiveRecord::Migration
  def change
    create_table :sample_storage_logs do |t|
      t.integer :sample_id
      t.string :user_name
      t.integer :out_percent
      t.integer :left_volume
      t.text :out_use_for
      t.timestamps null: false
    end
  end
end
