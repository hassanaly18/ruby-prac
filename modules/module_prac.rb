module Warmup
  def pushups
    "I need a break!"
  end
end

class Gym
  include Warmup

  def preacher
    "I'm doing curls"
  end
end

class Dojo
  include Warmup
  def tai_ko
    "Look at my stance"
  end
end

puts Gym.new.pushups
puts Gym.new.preacher
puts Dojo.new.pushups

puts Warmup.class      # Module
puts Class.superclass   # Module
puts Module.superclass  # Object


#-------------------------------------------------------------------
#-------------------------------------------------------------------

module Perimeter
  def calc_peri(*sides)
    sides.inject(0) {|sum, side| sum + side}
  end
end

class Rectangle
  include Perimeter

  def initialize(length, width)
    @length = length
    @width = width
  end

  def sides
    [@length, @width, @length, @width]
  end
end

class Square
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

rect1 = Rectangle.new(30,20)
puts rect1.calc_peri(*rect1.sides)

sq1 = Square.new(40)
puts sq1.calc_peri(*sq1.sides)