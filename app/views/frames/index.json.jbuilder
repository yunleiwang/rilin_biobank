json.array!(@frames) do |frame|
  json.extract! frame, :id, :frame_seq, :frame_name, :frame_type, :code_order, :horizontal_direction, :vertiacal_direction, :frame_rows, :frame_columns
  json.url frame_url(frame, format: :json)
end
