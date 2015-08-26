json.array!(@frame_storages) do |frame_storage|
  json.extract! frame_storage, :id, :position_index, :frame_id, :container_id
  json.url frame_storage_url(frame_storage, format: :json)
end
