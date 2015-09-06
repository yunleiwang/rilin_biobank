class Container < ActiveRecord::Base

  # 根据冰箱的行数及列数算出冰箱存储架子的空间个数，病生成存储空间对象
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
end
