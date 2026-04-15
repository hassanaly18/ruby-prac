def location_in_hierarchy(object, method)
  klass = object.class
  ancestors = [klass]

  while not (superclass = klass.superclass).nil?
    ancestors << superclass
    klass = superclass
  end

  ancestors.reverse.find do |ancestor|
    ancestor.instance_methods.include?(method)
  end 
end

a = "abc"

p location_in_hierarchy(a, :upcase)
puts location_in_hierarchy("hello", :to_s)     
puts location_in_hierarchy(5, :to_s)           
puts location_in_hierarchy(5, :nil?)           