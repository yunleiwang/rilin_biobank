class Frame < ActiveRecord::Base
  #has_many :containers, :through => :frame_storages
  has_many :frame_storages, :dependent => :destroy
  has_many :boxer_storages, :dependent => :destroy
  # 根据架子的行数及列数算出冰箱存储盒子的空间个数，并生成存储空间对象
  # 存储盒子的空间个数 = row * col
  # self.frame_rows(立式架子的层数)
  # self.frame_columns(立式架子的每层个数)
  def batch_create_boxer_storage
    num = self.frame_rows*self.frame_columns
    (0...num).each do |i|
      boxer_storage = BoxerStorage.new
      boxer_storage.frame_id= self.id
      boxer_storage.position_index= i
      boxer_storage.save
    end
  end

  def boxers
    boxers_ids = (self.boxer_storages.collect{|boxer_storage| boxer_storage.boxer_id}).uniq
    if !boxers_ids.empty?
      Boxer.where('id in (?)',boxers_ids)
    else
      []
    end
  end

  def container
    container = nil
    frame_storage = self.frame_storages[0]
    if frame_storage
      container = frame_storage.container
    end
    container
  end
end
