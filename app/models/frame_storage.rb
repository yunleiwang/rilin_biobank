class FrameStorage < ActiveRecord::Base
  belongs_to :container
  belongs_to :frame
end
