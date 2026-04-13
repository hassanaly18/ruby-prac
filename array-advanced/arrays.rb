array = [43, 23]

zen = array[0]
life = array.at(1)

puts zen
puts life

zen, austin = [[4, 8], [3, 16], [23, 42, 15]]

p zen
p austin


def zen
  [42, true]
end

x,y = zen

puts x
puts y


[[1, 2, 3, 4], [42, 43]].each { |a, b| puts "#{a} #{b}" }


#-------------------------------

def compute(ary)
  ary.map{ |(a,b)| !b.nil? ? a+b : a }
end

zen, life, more = [23,43]

puts zen
puts life
p more

car, *cdr = [42, 43, 44]
puts 
p car
p cdr 


def zen(*args)
	[args.first, args.last]
end

p zen(42, 43, 44, 45, 46)

[[1,2,3,4], [42,43]].each { |a, *b| puts "#{a} #{b}" }