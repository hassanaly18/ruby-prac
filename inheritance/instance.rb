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
  def initialize(desc, color)
    @desc = desc 
    @color = color