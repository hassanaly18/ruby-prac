puts 1.0.is_a?(Float)  #child
puts 1.0.is_a?(Numeric)  #parent

puts 1.0.class
puts 1.0.class.superclass
puts Float.superclass
puts Numeric.superclass
puts Object.superclass
puts BasicObject.superclass

puts Float.instance_methods.count
puts String.instance_methods.count

puts (Float.instance_methods - Object.instance_methods - Numeric.instance_methods).count

def is_ancestor?(klass, subklass)
  return klass == subklass.superclass
end

puts is_ancestor?(Numeric, Float)