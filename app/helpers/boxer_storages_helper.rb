module BoxerStoragesHelper
  def get_css_class2(boxer_storage, j, current_boxer_id)
    str = ""
    if j==0
      str << " first_box"
    end
    if boxer_storage.boxer_id
      if !current_boxer_id.nil? && current_boxer_id == boxer_storage.boxer_id
        str << " current_box"
      else
        str << " full_box"
      end
    end
    str
  end

  # def get_frame_css_class(frame_storage,j)
  #   str = ""
  #   if j==0
  #     str << " first_box"
  #   end
  #   if frame_storage.frame_id
  #     str << " full_box"
  #   end
  #   str
  # end
end
