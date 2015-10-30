class SamplePreoutLog < ActiveRecord::Base
  #has_many :samples
  has_many :sample_out_logs
  #更新sample预出库状态
  def update_status
    sample_ids = self.sample_ids.split(',')
    sample_ids = sample_ids.map{|sample_id|sample_id.to_i}
    #samples_status = Sample.where('id in (?)', sample_ids).collect{|sample|sample.storage_status}
    samples_out_status = SampleOutLog.where('sample_id in (?)', sample_ids).collect{|sample|sample.out_status}
    samples_out_status = samples_out_status.uniq
    if samples_out_status.length==1&&samples_out_status.include?(SampleOutLog::OUT_STATUS_SUCCESS)
      self.status = Sample::STATUS_OUT
      self.save
    end
  end
end
