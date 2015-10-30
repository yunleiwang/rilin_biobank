class CreateSampleOutLogs < ActiveRecord::Migration
  def change
    create_table :sample_out_logs do |t|
      t.integer :sample_id
      t.integer :sample_preout_log_id
      t.string :out_status
      t.string :remark

      t.timestamps null: false
    end
  end
end
