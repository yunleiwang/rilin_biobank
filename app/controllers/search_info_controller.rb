class SearchInfoController < ApplicationController
  def search_today
    @samples = Sample.where('updated_at::date = ?', Time.now.to_date-1)
    p PatientInfo.all
    p @samples.length
  end
end
