class Foo 
end

foo = Foo.new

p foo.send(:object_id)
p foo.send(:class) 