puts (Array.instance_methods - Object.methods).count

#same functionality
puts [4, 8, 15, 16, 23, 42].count
puts [4, 8, 15, 16, 23, 42].size
puts [4, 8, 15, 16, 23, 42].length

puts [4, 8, 15, 16, 23, 42].count(42) #takes argument too


puts [4, 8, 15, 16, 23, 42].count { |e| e%2==0 } 

puts
puts [4, 8, 15, 16, 23, 42].index(15)
puts [4, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 } 

p [4, [8], [15], [16, [23, 42]]].flatten(1)

p [nil, 4, nil, 8, 15, 16, nil, 23, 42, nil].compact #to remove nil elements

def zen(array)
  converted = array.compact.flatten
  converted.index(42) == 5 ? converted.count : nil
end

p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8]) #makes pairs

p [4, 8, 15, 16, 23, 42].slice(2)
p [4, 8, 15, 16, 23, 42].slice(2..5)

p [4, 8, 15, 16, 23, 42].join(", ")

def few2last(array)
  array.slice(-2..-1).join("|")
end
p few2last([4, 8, 15, 16, 23, 42])

p [8, 15, 16, 23, 42].unshift(4) #add element in starting of array
p [16, 23, 42].unshift(4, 8, 15)

p [177, 8978].pack("UU")
p [177, 8978].pack("U*")