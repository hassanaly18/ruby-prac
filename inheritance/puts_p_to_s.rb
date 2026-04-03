class Item
  def initialize(item, qty)
    @item = item
    @qty = qty
  end

  # def inspect
  #   "Result of inspect"
  # end
end

item = Item.new("a", 1)

puts item
p item
# puts Item.new
# puts Item.new.to_s
# p Item.new

class Item2
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  def to_s
    "#{@item_name} : #{@qty}"
  end
	# override 'to_s' here  
end

item2 = Item2.new("a",1)

puts item2
p item2