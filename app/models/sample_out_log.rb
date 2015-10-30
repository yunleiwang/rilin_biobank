class SampleOutLog < ActiveRecord::Base
  belongs_to :sample
  belongs_to :sample_preout_log
  OUT_STATUS_SUCCESS = "完成"
  OUT_STATUS_NO = "未完成"
end
