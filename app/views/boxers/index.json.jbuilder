json.array!(@boxers) do |boxer|
  json.extract! boxer, :id, :box_name, :box_seq, :box_row, :box_column, :remark
  json.url boxer_url(boxer, format: :json)
end
