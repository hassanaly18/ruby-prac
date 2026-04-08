class Foo
end

p "a".object_id
p "a".object_id
p Foo.new.object_id

puts

p "a".class
p 1.class

class Foo
end
p Foo.new.class

p Foo.class

# While we are at it, lets check out the classes of a few other objects
p String.class
p Fixnum.class
p Array.class

puts
#--------------------------------------------

class Dish
end

class Soup < Dish
end
class IceCream < Dish
end
class ChineseGreenBeans < Dish
end

class DeliveryTray
  DISH_BOWL_MAPPING = { 
    Soup => "soup bowl",
    IceCream => "ice cream bowl",
    ChineseGreenBeans => "serving plate"
  }
  
  def initialize
    @dishes_needed = {}
  end 
  
  def add(dish)
    dish = DISH_BOWL_MAPPING[dish.class]
    @dishes_needed[dish] = (@dishes_needed[dish] || 0) + 1
  end
  
	def dishes_needed
		return "None" if @dishes_needed.empty?

    @dishes_needed.map { |dish_name, count| "#{count} #{dish_name}"}.join(", ")
  end
end  

d = DeliveryTray.new
d.add Soup.new; d.add Soup.new
d.add IceCream.new

puts d.dishes_needed # should be "2 soup bowl, 1 ice cream bowl"


puts
#-----------------------------------------------------------------

class A
end

class B < A
end

p A.new.instance_of?(A)
p B.new.instance_of?(A)
