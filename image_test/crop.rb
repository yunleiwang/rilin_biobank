require 'mini_magick'
img = MiniMagick::Image.open "06.jpg"

#取得宽度和高度
w,h = img[:width],img[:height] #=> [1480, 1540]
#shaved_off = ((w-h)/2).round #=> 256
#img.shave "#{shaved_off}x0" #此处表示宽度上左右各截取256个像素，高度上截取0像素
#img.colorspace("GRAY")
p w
p h
w = 1480
h = 1490
x = 0
y = 50

w1 = (w/9).round
h1 = (h/9).round

p w1
p h1

(0..8).each do |i|
    (0..8).each do |j|
        img = MiniMagick::Image.open "06.jpg"
        x = w1*i
        y = h1*j
        crop_params = "#{w1}x#{h1}+#{x}+#{y}"
        img.crop(crop_params)
        img.write "test_#{i*9+j}.jpg"
    end
end

#crop_params = "#{w1}x#{h1}+#{0}+#{1*w1}"
#img.crop(crop_params)
#img.write "001.jpg"