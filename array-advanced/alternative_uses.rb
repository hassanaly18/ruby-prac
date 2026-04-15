["xkcd", 9, Object.new, ["a", "clean", "array"], {:a => "hash"}].each do |e|
  puts e.class
end

class Chef
  def new_order(waiter, order)
    puts "Chef received order: #{order}"

    sloppy_order = order.to_a.flatten

    waiter.serve(sloppy_order)
  end
end

class Table
  def initialize(number)
    @number = number
  end

  def serve_sandwich(sandwich)
    puts "Table #{@number}: Serving sandwich -> #{sandwich}"
  end

  def serve_drink(drink)
    puts "Table #{@number}: Serving drink -> #{drink}"
  end
end

class WaiterRobot

  def initialize(chef, tables)
    @chef = chef
    @tables = tables
    @name = "Tyler Durden"
  end
  
  def name
    @name
  end
  
  def place_order(table_number, sandwich, drink)
    order = {:table => table_number, :sandwich => sandwich, :drink => drink}
    @chef.new_order(self, order)
  end
  
  def serve(order)
    o = Hash[*order]
    table_number = o[:table]
    table = @tables[table_number]
    
    table.serve_sandwich(o[:sandwich])
    table.serve_drink(o[:drink])
  end
  
end

chef = Chef.new

tables = {}

(1..5).each do |i|
  tables[i] = Table.new(i)
end

waiter = WaiterRobot.new(chef, tables)

waiter.place_order(1, "BLT Sandwich", "Coke")
waiter.place_order(3, "Chicken Sandwich", "Pepsi")
waiter.place_order(2, "Veggie Sandwich", "Lemonade")
