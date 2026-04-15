class Item
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
    #supplier = "Acme group" #local variavble, causing error, cant be accessed outside the class
  end

  def show
    puts "#{@item_name} : #{@quantity}"
  end

  def item_name
    @item_name
  end
end

item = Item.new("TV", 1)
Item.new("fridge", 2).show

puts item.item_name


#----------------------------------------------------

class Item2
  def initialize(desc, color, qty)
    @desc = desc 
    @color = color
    @qty = qty
  end
  def qty
    @qty
  end
  def qty=(new_qty)
    @qty = new_qty
  end
end 

item1 = Item2.new("this is teh desc", "red", 67)
p item1.qty

item1.qty=99
p item1.qty

class Item
  attr_reader :item_name  

  def initialize(item_name)
    @item_name = item_name
  end  
end

item = Item.new("agragarok")
p item.item_name

class Item
  attr_writer :color, :description  

  def initialize(description, color)
    @description = description
    @color = color
  end
end