#require "uuidtools"
class ContainerType < ActiveRecord::Base
  has_many :containers, dependent: :destroy
  LISHIBINGXIANG = '立式冰箱'
  WOSHIBINGXIANG = '卧式冰箱'
  YEDANGUAN = '液氮罐'
  # 存储图片的路径(public下的container_icon文件夹)
  def image_path
    "#{File.expand_path(Rails.root)}/public/container_icon"
  end

  # 保存图片
  def save_image(image)
    return if image.nil?
    ext = File.extname(image.original_filename) # 获取图片的扩展名
    image_name = "#{Time.now.to_i}#{ext}"  # 最终的图片名称(uuid)
    FileUtils.makedirs(image_path) unless File.directory?(image_path) # 判断有无image_path这个目录,如果没有则创建目录

    File.open(File.join(image_path,image_name), "wb") do |f|
      f.write(image.read)
    end

    self.container_icon= "/container_icon/#{image_name}"
  end
end
