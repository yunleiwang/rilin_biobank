class PatientCase < ActiveRecord::Base
	belongs_to :patient_info
	has_many :samples, :dependent => :destroy

	# 批量添加样本
	# @params batch_add_num批量添加的个数
	# @params params页面传过来的所有参数
	def batch_create_sample(batch_add_num,params)
		# 获取当前样本个数，如果已经有3个，且病例id=1-01，样本号应从1-01-4开始
		current_num = self.samples.length
		begin_num = current_num + 1
		end_num = current_num + batch_add_num

		Sample.transaction do
			(begin_num..end_num).each do |i|
				sample = Sample.new(params[:sample])
				sample.patient_case_id = self.id
        sample.current_sample_volume=sample.initial_sample_volume
				sample.save
				# 根据系统规则生成样本号
				sample.sample_no = sample.generate_sample_no(i)
				# 根据系统规则自动生成样本ID
				# 规则: 共6位,为样本数据库id,不够6位左侧自动补0
				sample.sample_seq = sample.id.to_s.rjust(6,'0')
				sample.save
			end
		end
	end
end
