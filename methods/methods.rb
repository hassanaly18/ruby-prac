puts 1.next
puts 1.method("next")  #shows the object/instance of a method
puts 1.method("next").call #call is used to call the instance/object of that method


def reverse(num)
  0-num
end

puts reverse(7)
puts reverse(-8)

def do_nothing
end

puts do_nothing.class 

def demonstrate_early_return
  return
  puts "You will never see this, because we never get here."
end

puts demonstrate_early_return.class

def add_two(num)
  num.next.next
end

puts add_two(13)


puts "\n\n"

def add(a,b)
  a+b
end

def add2(a,b,c=0)  #setting a default value if this param is not passed
  a+b+c
end

puts add(23,1)
puts add2(23,1, 8)

def say_hello(name = "Qui-Gon Jinn")
  "Hello, #{name}."
end

puts say_hello("David")

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number } #numbers.inject(0, :+)
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)


def add(a, b, c)
  a + b + c
end

numbers_to_add = [1, 2, 3] #Without a splat, this is just one parameter
puts add(*numbers_to_add)  #Try removing the splat just to see what happens

def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message("The sum is", 1,2,3)

def introduction(age, gender, *names)
  names.map do |name|
    "Hello #{name}, your age is #{age}, and you are a #{gender}"
  end
end

puts introduction(23, "male", "virat", "warner", "smith")

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  sum
end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)

def add3(*nums)
  nums.inject(0){|sum, num| sum + num}
end

def subtract(*nums)
  nums.inject {|sum, num| sum - num}
end

def calculate(*nums, options)
  return add3(*nums) if options[:plus]
  return subtract(*nums) if options[:minus]
end

puts calculate(1,2,3, plus: true)
puts calculate(10,5, minus: true)