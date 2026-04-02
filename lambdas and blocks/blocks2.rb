addition = lambda {|a,b| return a+b}
puts addition.call(5,6)

empty_block = lambda {}
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass

[1,2,3].each {|num| puts num}

def test
  puts "This is the test method"
  yield
end

test {puts "Inside yield"}

# def foo
#  puts yield
#  puts method(:foo)
#  # uncomment the following line and see what happens! 
#  puts method(:yield)
# end

# foo { "I expect to be heard." }


#------------------------------------------

# addition = lambda {|a, b| a + b }
# puts addition.call(5, 5)

# addition = lambda {|a, b|
#  a + b
# }
# puts addition.call(5, 5)

# addition = lambda do |a,b|
#   a+b
# end

addition = lambda do |a,b|; a+b; end

puts addition.call(6,8)

#lambda
# def a_method
#  lambda { puts "we just returned from the block" }.call
#  return "we just returned from the calling method"
# end

# puts a_method

#proc
def a_method
 Proc.new { return "we just returned from the block" }.call
 return "we just returned from the calling method"
end

puts a_method


short = -> (a,b){a+b}
puts short.call(4,3)

long = lambda {|a,b| a+b}
puts long.call(8,9)

short = proc { |a, b| a + b }
puts short.call(2, 3)

long = Proc.new { |a, b| a + b }
puts long.call(2, 3)