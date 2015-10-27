class AddUseForToSamplePreoutLog < ActiveRecord::Migration
  def change
    add_column :sample_preout_logs, :use_for, :text
  end
end
