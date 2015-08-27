class PatientCase < ActiveRecord::Base
	belongs_to :patient_info
	has_many :samples, :dependent => :destroy
end
