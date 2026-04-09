# a = [1,2,3]
# b = a 
# b << 4

# p a
# p b 


a = [1,2,3]
b = a.clone
b << 4

p a
p b

puts

foo = "foo"
foos = [foo]
foo = foo.upcase		# returns a new string object. foo remains unharmed.
p foos

bar = "bar"
bars = [bar]
bar.upcase!				  # this changes bar itself. the object mutates.
p bars

puts

# a = "test"
# a.freeze #gives error
# a << "change"
# puts a

a = [1,2,3,4]
a.freeze
a = [1,2,3]
p a

puts
#----------------------------------------------------------

class Object
  def frozen_clone
    self.clone.freeze
  end
end


a = "hello"
b = a.frozen_clone

puts b 
puts b.frozen?

b << " world"