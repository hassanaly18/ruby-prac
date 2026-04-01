l = lambda{"Do or do not"}

puts l.call

l2 = lambda do |string|
  if string == "try"
    return "There is no such thing"
  else
    return "Do or do not"
  end
end

puts l2.call("try")

increment = lambda {|num| num+1}

puts increment.call(5)

l3 = ->(a,b){a+b}
puts l3.call(4,5)

