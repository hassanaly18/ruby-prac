class Foo
  def shout
    puts "I'm Foo"
  end
end

foo=Foo.new
foo.shout

class Foo
	def shout
	  puts "I'm still Foo, but I have been overridden"
	end
end
foo.shout

#----------------------------
#singleton method

puts 

class Foo1
end

foo=Foo1.new
def foo.shout
  puts "Foo Foo Foo!"
end
foo.shout

p Foo1.new.respond_to?(:shout)

#------------------------------
#metaclass
puts 
# class Object
#   def metaclass
#     class << self
#       self
#     end
#   end
# end

# foo = "I'm a string object"

# # Let us define a singleton method on foo
# def foo.shout
#   puts self.upcase
# end

# foo.shout

# # Lets look at the class of foo's metaclass.
# p foo.metaclass.class

# # # The singleton method 'shout' obviously doesn't exist in the actual class.
# p foo.class.instance_methods.include? :shout

# # # But does it exist in the metaclass?
# p foo.metaclass.instance_methods.include? :shout


puts

# class Object
#   def metaclass
#     class << self
#       self
#     end
#   end
# end


# a=Object.new
# p a.metaclass.new


#---------------------------------

puts
class Object  
  def singleton_method?(method)
    singleton_methods = 
      self.singleton_class.instance_methods - self.class.instance_methods
        
    singleton_methods.include? method
  end
end


foo1 = "A string"
def foo1.shout
  puts self.upcase
end

foo1.shout
p foo1.singleton_method?(:shout)