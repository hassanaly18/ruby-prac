i = 1

while i<=5
  print i , " " 
  i+=1
end

puts 

i = 1
until i > 5
  print i, " "
  i+=1
end

puts 

i=1 

loop do
  print i, " "
  i+=1
  break if i>5
end

puts

5.times do |i|
  print i, " "
end 

puts 

[1,2,3,4,5].each do |num|
  print num, " "
end

puts

person = {name: "Hassan", age: 23}

person.each do |key, value|
  puts "#{key} : #{value}"
end 

puts 

for i in 1..5
  print i, " "
end 

puts 

["a", "b", "c"].each_with_index do |val, i|
  puts "#{i}: #{val}"
end

1.upto(5) { |i| puts i }
5.downto(1) { |i| puts i }
1.step(10, 2) { |i| puts i }

i = 1
while i <= 10
  break if i == 5
  puts i
  i += 1
end

puts 

(1..5).each do |i|
  next if i == 3
  puts i
end

puts 
i = 0

while i < 3
  puts i
  i += 1
  redo if i == 2
end

puts 

p [1, 2, 3].map { |n| n * 2 }