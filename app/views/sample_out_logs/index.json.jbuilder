json.array!(@sample_out_logs) do |sample_out_log|
  json.extract! sample_out_log, :id, :sample_id, :sample_preout_log_id, :out_status, :remark
  json.url sample_out_log_url(sample_out_log, format: :json)
end
