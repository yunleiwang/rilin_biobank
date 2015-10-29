class SamplePreoutLog < ActiveRecord::Base
  def update_status
    sample_ids = self.sample_ids.split(',')
    samples_status = Sample.where('id in (?)', sample_ids).collect{|sample|sample.storage_status}
    samples_status.uniq!
    if samples_status.length==1&&samples_status.include?(Sample::STATUS_OUT)
      self.status = Sample::STATUS_OUT
      self.save
    end
  end
end
