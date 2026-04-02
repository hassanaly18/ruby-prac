class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end
  
  def area
    @length * @breadth
  end
end

class Rectangle
  def perimeter
  end
  def area
  end
end

r1 = Rectangle.new(2,3)
puts r1.perimeter


#overriding
class MyArray < Array 
  def map
    "This is a russian map"
  end
end

arr = MyArray.new([1,2,3,4])

p arr.map

#---------------------------------------------

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + " by flying"  #super will call the same method from the parent and also the implementation in the parent
  end
end

class Human < Animal
  def move
    super + " by walking"
  end
end

class Penguin < Bird
  def move
    "I can move by walking and swimming"
  end
end


puts Animal.new.move
puts Bird.new.move
puts Human.new.move
puts Penguin.new.move