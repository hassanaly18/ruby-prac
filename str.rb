puts "HelloWorld".length

a=1
b=7
puts "the num #{a} is smaller than #{b}" #string interpolation

def string_length_interpolater(incoming_string)
  "The string you just gave me has a length of #{incoming_string.length}"
end

puts string_length_interpolater("We have a big string")

puts "[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include? 'Luke'

puts "Ruby is a beautiful language".start_with? "Ruby"

puts "I am a Rubyist".index("R")

puts "i am in lower case".upcase
puts "I am in UPPER CASE".downcase
puts "i am in UPPER CASE".swapcase

puts 'Fear is the path to the dark side'.split

puts "Ruby".concat("Monk")
puts "Ruby" << "Monk"
puts "Ruby"+"Monk"

puts "I should look into your problem when I get time".sub('I','We')
puts "I should look into your problem when I get time".gsub('I','We')

puts 'RubyMonk'.gsub(/[aeiou]/,'1')

puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/, '0')

puts 'RubyMonk Is Pretty Brilliant'.match(/ ./)