class BoxerStorage < ActiveRecord::Base
  belongs_to :frame
  belongs_to :boxer
end
