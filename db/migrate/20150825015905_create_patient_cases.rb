class CreatePatientCases < ActiveRecord::Migration
  def change
    create_table :patient_cases do |t|
      t.string :case_number
      t.string :patient_info_id

      t.timestamps null: false
    end
  end
end
