class Container < ActiveRecord::Base
  validates_presence_of :container_type_id
  validates_presence_of :container_name
  validates_uniqueness_of :container_name
  #validates_numericality_of :frame_num, :container_columns, :container_rows
  belongs_to :container_type
  has_many :frame_storages, :dependent => :destroy
  # 根据冰箱的行数及列数算出冰箱存储架子的空间个数，并生成存储空间对象
  # 存储架子的空间个数 = row * col
  # self.container_rows(立式冰箱的层数,卧式冰箱的行数)
  # self.container_columns(立式冰箱的每层个数,卧式冰箱的每行个数)
  def batch_create_frame_storage
    num = self.container_rows*self.container_columns
    (0...num).each do |i|
      frame_storage = FrameStorage.new
      frame_storage.container_id= self.id
      frame_storage.position_index= i
      frame_storage.save
    end
  end

  # 为液氮罐批量生成存储架子的空间
  # 根据液氮罐的frame_num生成
  def batch_create_liquid_frame_storage
    num = self.frame_num
    (0...num).each do |i|
      frame_storage = FrameStorage.new
      frame_storage.container_id= self.id
      frame_storage.position_index= i
      frame_storage.save
    end
  end

  #冰箱中存放的架子
  def frames
    frame_ids = (self.frame_storages.collect{|frame_storage| frame_storage.frame_id}).uniq
    Frame.where('id in (?)',frame_ids)
  end

end
