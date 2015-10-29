class Boxer < ActiveRecord::Base
  has_many :boxer_storages, :dependent => :destroy
  has_many :sample_storages, :dependent => :destroy
  # 根据盒子的行数及列数算出盒子内的孔空间个数，并生成存储空间对象
  # 盒内小孔空间个数 = row * col
  # self.box_row(盒子行数)
  # self.box_column(盒子的列数)
  def batch_create_sample_storage
    num = self.box_row*self.box_column
    (0...num).each do |i|
      sample_storage = SampleStorage.new
      sample_storage.boxer_id= self.id
      sample_storage.position_index= i
      sample_storage.save
    end
  end

  def frame
    frame = nil
    boxer_storage= self.boxer_storages[0]
    if boxer_storage
      frame = boxer_storage.frame
    end
    frame
  end
end
