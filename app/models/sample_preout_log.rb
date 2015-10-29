class SamplePreoutLog < ActiveRecord::Base
  def update_status
    sample_ids = self.sample_ids.split(',')
    sample_ids = sample_ids.map{|sample_id|sample_id.to_i}
    samples_status = Sample.where('id in (?)', sample_ids).collect{|sample|sample.storage_status}
    samples_status = samples_status.uniq
    p '22222222222222222222222'
    p samples_status
    p samples_status.include?(Sample::STATUS_OUT)
    if samples_status.length==1&&samples_status.include?(Sample::STATUS_OUT)
      self.status = Sample::STATUS_OUT
      self.save
    end
  end
end
