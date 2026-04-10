class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    return ((299*r) + (587*g) + (114*b)) / 1000 
  end

  def brightness_difference(another_color)
    return (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (r - another_color.r) + (g - another_color.g) + (b - another_color.b)
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end 
end 

c1 = Color.new(121,22,0)
c2 = Color.new(87,223,76)

puts c1.brightness_index

puts c1.brightness_difference(c2)
puts c1.hue_difference(c2)
puts c1.enough_contrast?(c2)
