class AddProportpionAndSysUserIdToSamplePreoutLog < ActiveRecord::Migration
  def change
    add_column :sample_preout_logs, :proportpion, :integer
    add_column :sample_preout_logs, :sys_user_id, :integer
  end
end
