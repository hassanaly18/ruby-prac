nums = [1,2,3,4,5]
alnum = [1, 'one', 2, 'two'] #can store multiple data types
alnum << "woot"

puts nums
puts alnum

puts [1, 2, 3, 4, 5].map { |i| i + 1 }
puts "\n"
puts [1, 2, 3, 4, 5].map { |i| i * 3 }
puts "\n"
puts [1,2,3,4,5,6].select {|num| num % 2 == 0}

puts "\n"

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
puts names.select {|word| word.length>5}

puts "\n"

arr = [1, 3, 5, 4, 6, 7]
arr.delete(5)
arr.delete_at(1)
puts arr

puts "\n"
puts [1,2,3,4,5,6,7].delete_if{|i| i < 4 }

puts "\n"
puts [1,2,3,4,5,6,7,8,9].delete_if{ |i| i%2==0}

puts "\n"

array = [1, 2, 3, 4, 5]
for i in array
  puts i
end

arr2 = [1, 3, 5, 4, 6, 7]

def array_copy(source)
  destination = []
  for i in source
    if i<4
      destination.append(i)
    else next
    end
  end
  return destination
end

puts "\nfunc"
puts array_copy(arr2)

puts "\n"
arr2.each do |i|
  puts i  
end