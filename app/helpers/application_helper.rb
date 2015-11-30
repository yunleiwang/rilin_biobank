module ApplicationHelper
  # 判断液氮罐的样式
  # storage 存储空间对象（可能是液氮罐的，架子的或是盒子的存储位置）
  # current_id 当前容器id
  def liquid_style(storage,current_id)
    container_id = nil
    color = '#ffffff'
    begin
      container_id = storage.frame_id
    rescue
      nil
    end

    if container_id.nil?
      begin
        storage.boxer_id
      rescue
        nil
      end
    end

    if container_id.nil?
      begin
        storage.sample_id
      rescue
        nil
      end
    end


    if !container_id.nil?
      if container_id ==current_id
        color = "#4ac344"
      else
        color = "#0993D3"
      end
    end
    p color
    color
  end
end
