puts 1.class
puts "".class
puts [].class

puts 1.is_a?(Integer)
puts "hello".is_a?(String)

puts 1.class.class

abc = Object.new
puts abc.class


#*************************************************
#*************************************************

class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    2 * (@length + @width)
  end  
  def area
    @length * @width
  end
end

puts "\n\n"

rect1 = Rectangle.new(56, 18)
puts rect1.perimeter()
puts rect1.area()