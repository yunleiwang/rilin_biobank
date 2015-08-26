class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :sample_no
      t.string :sample_seq
      t.integer :user_id
      t.string :storage_status
      t.integer :freezing_thawing_times

      t.timestamps null: false
    end
  end
end
