class Item
  def initialize(item_name, qty)
    @item_name = item_name
    @qty = qty 
  end

  def show
    puts "Instance method show invoked for #{self}"
  end

  def to_s
    "Item: #{@item_name}"
  end
end

Item.new("silence", 8).show

class Item2
  def self.show
    puts "Class method show invoked"
  end
end

Item2.show

class ApplicationConfiguration
  #@@configuration = {}

  def self.set(property_name, value)
    @configuration ||={}
    @configuration[property_name] = value
  end

  def self.get(property_name)
    @configuration ||= {}
    @configuration[property_name]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
end

class WebApplicationConfiguration < ApplicationConfiguration
end

# ApplicationConfiguration.set("name", "Demo Application")
# ApplicationConfiguration.set("version", "1.0.8")

# p ApplicationConfiguration.get("version")

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")
p ApplicationConfiguration.get("name")
#--------------------------------------------------------------
#--------------------------------------------------------------

