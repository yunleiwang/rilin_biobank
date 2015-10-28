class Boxer < ActiveRecord::Base
  has_many :frames, :through => :boxer_storages, :dependent => :destroy
end
