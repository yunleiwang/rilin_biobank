class AddColumnsToSample < ActiveRecord::Migration
  def change
    add_column :samples, :sample_storage_id, :integer
    add_column :samples, :initial_sample_volume, :float
    add_column :samples, :current_sample_volume, :float
    add_column :samples, :patient_case_id, :integer
  end
end
