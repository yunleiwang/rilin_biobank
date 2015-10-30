class Sample < ActiveRecord::Base
	belongs_to :patient_case
	has_many :sample_storages
  #has_many :sample_preout_logs,
  has_many :sample_out_logs
  validates_presence_of :initial_sample_volume
	#样本状态
	STATUS_IN = "在库"
	STATUS_OUT = "出库"
	STATUS_PRE_OUT = "预出库"

	# 生成样本号
	# 生成规则：病例号-样本顺序号
	# @params num 该样本在当前病例中的顺序号
	def generate_sample_no(num)
		self.patient_case.case_number << "-" << num.to_s
	end

	# 获取当前样本的上一个样本号 sample_no
	def previous_sample_no
		sample_nos = self.patient_case.samples.order('id asc').collect{|sample|sample.sample_no}
		index = sample_nos.index(self.sample_no)
		if index == 0
			nil
		else
			sample_nos[index-1]
		end
	end

	# 获取当前样本的下一个样本号 sample_no
	def next_sample_no
		sample_nos = self.patient_case.samples.order('id asc').collect{|sample|sample.sample_no}
		index = sample_nos.index(self.sample_no)
		if index == sample_nos.length-1
			return nil
		else
			return sample_nos[index+1]
		end
  end

  # 查询样本位置
  def position
    str=''
    sample_storage = self.sample_storages[0]
    if sample_storage
      box = Boxer.find(sample_storage.boxer_id)
      frame = box.frame
      container = frame.container
      str << (container.container_name + '//' + frame.frame_name + '//' + box.box_name + "//" + sample_storage.position_index.to_s)
    end
    str

  end

  #情况样本的存储位置
  def clear_sample_storage
    sample_storage = self.sample_storages[0]
    if sample_storage
      sample_storage.sample_id=nil
      sample_storage.save
    end
  end


end
