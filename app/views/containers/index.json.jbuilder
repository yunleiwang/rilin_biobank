json.array!(@containers) do |container|
  json.extract! container, :id, :container_name, :container_type_id, :code_style, :frame_num, :container_rows, :container_columns
  json.url container_url(container, format: :json)
end
