module FrameStoragesHelper
  def get_frame_css_class(frame_storage,j,current_frame_id)
    str = ""
    if j==0
      str << " first_box"
    end

    if frame_storage.frame_id
      if !current_frame_id.nil?&&frame_storage.frame_id==current_frame_id
        str << " current_box"
      else
        str << " full_box"
      end
    end
    str
  end

end
