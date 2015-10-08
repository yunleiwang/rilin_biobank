require 'mini_magick'
img = MiniMagick::Image.open "b.png"

#取得宽度和高度
w,h = img[:width],img[:height] #=> [1480, 1540]
#shaved_off = ((w-h)/2).round #=> 256
#img.shave "#{shaved_off}x0" #此处表示宽度上左右各截取256个像素，高度上截取0像素
#img.colorspace("GRAY")
p w
p h
img.resize '200%x200%'
#crop_params = "#{w1}x#{h1}+#{0}+#{1*w1}"
#img.crop(crop_params)
img.write "resize.png"