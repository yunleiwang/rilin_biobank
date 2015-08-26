json.array!(@patient_cases) do |patient_case|
  json.extract! patient_case, :id, :case_number, :patient_info_id
  json.url patient_case_url(patient_case, format: :json)
end
