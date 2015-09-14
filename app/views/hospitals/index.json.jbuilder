json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :province_id
  json.url hospital_url(hospital, format: :json)
end
