json.array!(@sample_preout_logs) do |sample_preout_log|
  json.extract! sample_preout_log, :id, :operator_name, :user_name, :status, :sample_ids
  json.url sample_preout_log_url(sample_preout_log, format: :json)
end
