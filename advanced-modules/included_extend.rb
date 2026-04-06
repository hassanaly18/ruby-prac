module Foo
  def self.included(klass)
    puts "Foo has been included in class #{klass}"
  end

  def module_method
    puts "Module method invoked"
  end
end

# class Bar
#   include Foo
# end

class Bar
end

b1 = Bar.new
b1.extend Foo
b1.module_method


module Foo
  def method_in_module
     "The method defined in the module invoked"
  end
end

class Bar
  def initialize
    self.extend Foo #using extend inside the class
  end
end


module Foo
  def say_hi
    puts "Hi!"
  end
end

class Bar
end

Bar.extend Foo
Bar.say_hi

#include makes instance variables, extend makes class variable