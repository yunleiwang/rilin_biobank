json.array!(@boxer_storages) do |boxer_storage|
  json.extract! boxer_storage, :id, :position_index, :boxer_id, :frame_id
  json.url boxer_storage_url(boxer_storage, format: :json)
end
