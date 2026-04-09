class Foo 
end

foo = Foo.new

p foo.send(:object_id)
p foo.send(:class) 

p Foo.is_a?(Object)
p Foo.new.is_a?(Object)

#--------------------------------------------
puts

#superclass
class Bar
    def shout
        "I am a bar"
    end
end

class Foo2 < Bar
end

p Foo2.new.shout
p Foo2.superclass

#-----------------------------------------------
puts

class Object
  def superclasses
    klasses = []
    klass = self.superclass

    while klass
        klasses.append(klass)
        klass = klass.superclass
    end

    klasses
  end
end

class Bar3
end

class Foo3 < Bar3
end

p Foo3.superclasses  

#----------------------------------------------
puts 
#Ancestors

class Bar4
end

class Foo4 <Bar4
end 

p Foo4.ancestors 

puts 

p Object.superclass
p Object.superclass.superclass