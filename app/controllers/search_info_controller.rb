class SearchInfoController < ApplicationController
  def search_today
    #@samples = Sample.where('updated_at::date = ?', Time.now.to_date-1)
    @samples = Sample.all
    @patient_cases = PatientCase.where("id in (?)",@samples.collect{|sample|sample.patient_case_id})
    @patient_infos = PatientInfo.where("id in (?)",@patient_cases.collect{|patient_case|patient_case.patient_info_id})

  end
end
