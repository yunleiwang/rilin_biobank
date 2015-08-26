json.array!(@samples) do |sample|
  json.extract! sample, :id, :sample_no, :sample_seq, :user_id, :storage_status, :freezing_thawing_times
  json.url sample_url(sample, format: :json)
end
