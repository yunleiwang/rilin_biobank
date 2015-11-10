class CreateSamplePreoutLogs < ActiveRecord::Migration
  def change
    create_table :sample_preout_logs do |t|
      t.string :operator_name
      t.string :user_name
      t.string :status
      t.string :sample_ids
      t.integer :num
      t.integer :proportpion
      t.integer :sys_user_id
      t.text :use_for

      t.timestamps null: false
    end
  end
end
