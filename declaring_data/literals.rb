puts [:i, :am, :a, :literal, :array].inspect

def an_array_with_5_elements
  [1,2,3,4,5]
end

def a_string_longer_than_10_characters
  "abcdefgdhjhsjdka"
end

def a_number_with_a_decimal_place
  89.12
end

def an_array_of_hashes
  [{:name => "Batman", :power => "I'm Batman"},
    {:name => "Virat Kohli", :power => "Greatest modern day batter"}]
end

def an_array_of_arrays
  [[1,2], [23,43,3], [92,3,54,3]]
end

puts an_array_with_5_elements


#few tricks
def describe(something)
  puts "I am a: #{something.class} and I look like: #{something}"
end

describe(1_024)
describe(1.2e-30)

#bignumber
def big_num
  123_782_999
end

puts big_num
describe(big_num)

describe("a string with a sci-notation float! #{1.2e-3}")
describe('a boring, non-interpolated string. #{1.2e-3}')
describe("a backslash-escaped string: \#{1.2e-3}")

#------------------------------------------------------------

def quoted_string(to_be_quoted)
  "\"#{to_be_quoted}\""
end

def multi_line_string(*lines)
  "Here are your lines!\n\n#{lines.join("\n")}"
end

def big_q_string(numerator, denominator)
	%Q[This %Q syntax is the ugliest one.
#{numerator} out of #{denominator} "dentists" agree.]
end

puts quoted_string("This is a string")
puts big_q_string(9,10)

#----------------COLLECTIONS-------------------

def repetitive_array_of_strings
  ["Wow,", "this", "is", "a", "pretty", "long", "list", "of", "words", "and", "it", "took", "me", "a", "long", "time", "to", "type", "because", "of", "all", "those", "darn", "quote", "characters.", "Geez."]
end

def array_of_words_literal
  %w[With this double-u shorthand it wasn't very hard at all to type out this list of words. Heck, I was even able to use double-quotes like "these"!]
end

ranger_smith = 55..75
puts "ranger smith: #{ranger_smith}"

start = 101
finish = 201
ranger_rick = start..finish
puts "ranger rick: #{ranger_rick}"

smith_points = ranger_smith.map {|n| n.to_s } #maps all values
puts "all together now! #{smith_points.join(", ")}"

puts

def one_less
  1...10
end

p one_less.map {|n| n.to_s}

def range_of_characters
  'a'..'z'
end

puts range_of_characters.map {|c| c.to_s }