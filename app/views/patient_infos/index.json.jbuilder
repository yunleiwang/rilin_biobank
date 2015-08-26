json.array!(@patient_infos) do |patient_info|
  json.extract! patient_info, :id, :patient_id, :patient_name, :gender, :birthday, :cell_phone, :home_phone, :other_phone, :zip_code, :address, :company_name, :company_phone, :company_zip, :company_address, :relationship_first, :relative_name_first, :relative_phone1_first, :relative_phone2_first, :relationship_second, :relative_name_second, :relative_phone1_second, :relative_phone2_second, :relationship_third, :relative_name_third, :relative_phone1_third, :relative_phone2_third
  json.url patient_info_url(patient_info, format: :json)
end
