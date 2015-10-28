module SampleStoragesHelper
  def get_sample_css_class(sample_storage,j)
    str = ""
    if j==0
      str << " first_box"
    end
    if sample_storage.sample_id
      str << " full_box"
    end
    str
  end
end
