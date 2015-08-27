class PatientInfo < ActiveRecord::Base
	has_many :patient_cases, dependent: :destroy
end
