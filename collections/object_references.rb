a = "tom"
b = "jerry"
superheroes = [a,b]
b.sub!(b,"batman")  #substitute the original string

puts superheroes
puts a 

puts 

#using the gsub method, the object will have the same object id even after changing itself
a = "tom"
puts "#{a}, #{a.object_id}"
a.gsub!("tom", "jerry")
puts "#{a}, #{a.object_id}"

puts

a = "tom"
b = "jerry"
superheroes = [a,b]
puts superheroes

# reassign a to a different superhero
a = "batman"
puts superheroes

# jerry is in fact superman. who knew!
b.gsub!("jerry", "superman")
puts superheroes