class Sample < ActiveRecord::Base

	belongs_to :patient_case

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


end
