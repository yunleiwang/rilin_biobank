module BoxerStoragesHelper
  def get_css_class2(boxer_storage,j)
    str = ""
    if j==0
      str << " first_box"
    end
    if boxer_storage.boxer_id
      str << " full_box"
    end
    str
  end

  def get_css_class(frame_storage,j)
    str = ""
    if j==0
      str << " first_box"
    end
    if frame_storage.frame_id
      str << " full_box"
    end
    str
  end
end
