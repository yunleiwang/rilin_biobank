class CreatePatientInfos < ActiveRecord::Migration
  def change
    create_table :patient_infos do |t|
      t.string :patient_id
      t.string :patient_name
      t.string :gender
      t.date :birthday
      t.string :cell_phone
      t.string :home_phone
      t.string :other_phone
      t.string :zip_code
      t.string :address
      t.string :company_name
      t.string :company_phone
      t.string :company_zip
      t.string :company_address
      t.string :relationship_first
      t.string :relative_name_first
      t.string :relative_phone1_first
      t.string :relative_phone2_first
      t.string :relationship_second
      t.string :relative_name_second
      t.string :relative_phone1_second
      t.string :relative_phone2_second
      t.string :relationship_third
      t.string :relative_name_third
      t.string :relative_phone1_third
      t.string :relative_phone2_third

      t.timestamps null: false
    end
  end
end
