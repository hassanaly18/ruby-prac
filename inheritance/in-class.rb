class MyArray < Array
end

class Rectangle
  def initialize(length, breadth)
   @length = length
   @breadth = breadth
  end

  def perimeter
   2 * (@length + @breadth)
  end
end

class Square < Rectangle
  def initialize(side)
    @length = @breadth = side
  end
end

sq = Square.new(7)

puts sq.perimeter
