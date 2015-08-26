json.array!(@sample_storages) do |sample_storage|
  json.extract! sample_storage, :id, :position_index, :boxer_id, :sample_id
  json.url sample_storage_url(sample_storage, format: :json)
end
