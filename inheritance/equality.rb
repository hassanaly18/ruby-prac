puts [1,2] == [1,2]
puts [1,2] == [1,3]

puts "a" == "xyz"

class Item
  attr_reader :item_name, :qty

  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty
  end
  def to_s
    "Item (#{@item_name}, #{@qty})"
  end

  def hash
    self.item_name.hash ^ self.qty.hash
  end

  def ==(other_item)
    puts "Method == called on #{self} with parameter #{other_item}"
    @item_name == other_item.item_name && @qty == other_item.qty
  end
  def eql?(other)
    @item_name == other.item_name && @qty == other.qty
  end
end

# p Item.new("abcd",1)  == Item.new("abcd",1)

p Item.new("abcd", 1).hash
items = [Item.new("abcd",1), Item.new("abcd",1), Item.new("abcd",1)]
p items.uniq
puts "\n\n"

p 1.hash
p "Hello".hash
p "Hello!".hash
p [1,2,3].hash
p({:x => 1, :y => 2}.hash)

class Item3
  def initialize(name)
    @name = name
  end
end

p Item3.new("ruby").hash 

class Item4
  attr_reader :item_name, :quantity, :supplier_name, :price

  def initialize(item_name, quantity, supplier_name, price)
    @item_name = item_name
    @quantity = quantity
    @supplier_name = supplier_name
    @price = price
  end 

  def hash
    self.item_name.hash ^ self.quantity.hash ^ self.supplier_name.hash ^ self.price.hash
  end 
  
  def eql?(other)
    @item_name == other.item_name && @quantity == other.quantity && @supplier_name == other.supplier_name && @price == other.price
  end
  
end

items2 = [Item4.new("abcd",1, "david", 780), Item4.new("abcd",1, "david", 780), Item4.new("abcd",1, "david", 780)]
p items2.uniq