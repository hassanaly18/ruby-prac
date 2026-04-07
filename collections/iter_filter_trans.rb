[4, 8, 15, 16, 23, 42].each_with_index { |e, i| puts "#{e} -- #{i}" }

{:locke => "4", :hugo => "8"}.each_with_index do |kv, i| 
  puts "#{kv} -- #{i}"
end

def map_value
	[3, 7, 14, 15, 22, 41].map { |e| e + 1 }
end

p map_value

#------------------------------------------------------------------

puts 
def hash_keys(hash)
	hash.map { |pair| pair.first }
end

result = [4, 8, 15, 16, 23, 42].inject(0) do |accumulator, iterated|
  accumulator += iterated
  accumulator
end

puts result

#implementation of inject function 
def custom_inject(array, default = nil)
  accumulator = default || array[0]
  
  array.each do |element|
    accumulator = accumulator + element
  end
  
  accumulator
end

p custom_inject([4, 8, 15, 16, 23, 42], 0)

puts

puts [4, 8, 15, 16, 23, 42].inject({}) { |a, i| a.update(i => i) }

puts 

def occurrences(str)
  str.scan(/\w+/).inject(Hash.new(0)) do |build, word|
    build[word.downcase] +=1
    build
  end
end
puts occurrences("This is teh is string")

#-----------------------------------------

puts
puts [4, 8, 15, 16, 23, "42"].any? { |e| e.class == String }

puts
puts ({:locke => 4, :hugo => 8}.any? { |candidate| candidate[1] > 4 }) 
puts({:locke => 4, :hugo => 8}.any? { |candidate, number| number < 4 }) 


#-----------------------------------------------------------

class Island
  def initialize(candidates)
    @candidates = candidates
  end 

  def survive?
    @candidates.none? {|c| c.downcase=="esau"}
  end

  def safe?
    @candidates.all? {k|c| c.downcase == "jac"}
  end 
end


#------------------------------------------

union_example = ["a", "b", "a"] | ["c", "c"]
inter_example = ["a", "b", "c"] & ["c", "c"]
array_difference = [1,2,3, 1,2,3] - [1]
p union_example
p inter_example
p array_difference


#-----------------------------------------------------------
#no item class
class Item
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    other.is_a?(Item) && other.name == name
  end

  def inspect
    @name.to_s
  end
end
class Order
  GIFT_ITEMS = [Item.new(:big_white_tshirt), Item.new(:awesome_stickers)]
  OUT_OF_STOCK_ITEMS = [Item.new(:ssd_harddisk)]

  def initialize(order)
    @order = order || []        
  end
  
  def final_order
    (@order - OUT_OF_STOCK_ITEMS) + GIFT_ITEMS
    @order
  end
end

customer_order = Order.new([Item.new(:fancy_bag),Item.new(:ssd_harddisk)])

p customer_order.final_order