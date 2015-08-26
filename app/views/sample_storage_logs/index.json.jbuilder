json.array!(@sample_storage_logs) do |sample_storage_log|
  json.extract! sample_storage_log, :id, :sample_id, :user_name, :out_percent, :left_volume, :out_use_for
  json.url sample_storage_log_url(sample_storage_log, format: :json)
end
