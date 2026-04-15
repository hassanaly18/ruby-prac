[1,2,3].each do |number|
    puts number
end

class FibonacciNumbers
  NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    
	def each
    NUMBERS.each {|number| yield number}
  end
end

f=FibonacciNumbers.new
f.each do |fibonacci_number|
  puts "A Fibonacci number multiplied by 10: #{fibonacci_number*10}"
end

puts

class FibonacciNumbers2
  
  NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

  def select(&filtering_condition_block)
    filtered_result = []
    NUMBERS.each do |number|
      filtered_result << number if filtering_condition_block.call(number)
    end
    filtered_result
  end

end

# print only the even Fibonacci numbers
nums = FibonacciNumbers2.new
nums.select {|num| num % 2 == 0}.each {|num| puts num}

puts 

class FibonacciNumbers3
  include Enumerable 

	NUMBERS = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  
  def each
    NUMBERS.each do |number|
      yield number
    end
  end
end

f = FibonacciNumbers3.new
if f.respond_to?(:map)
  squares = f.map {|number| number * number }
	puts "The squares of the fibonacci numbers are #{squares}"
else
  puts "I'll reveal the squares to you once you pass the tests."
end