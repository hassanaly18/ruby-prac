res_menu = {
  "Ramen" => 3,
  "Dal Makhni" => 4,
  "Tea" => 2
}

puts res_menu
puts res_menu["Ramen"]

res_menu["Coffee"] = 7
puts res_menu


res_menu.each do |item, price|
  puts "#{item} : #{price}"
end

res_menu.each do |item, price|
  res_menu[item] = price * 1.10 
end

puts "\nAfter updation"
res_menu.each do |item, price|
  puts "#{item} : #{price}"
end

puts res_menu.keys
puts res_menu.values

normal = Hash.new
was_not_there = normal[:zig]

p was_not_there

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:zig]

p pretending_to_be_there
p usually_brown.keys

chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris

def artax
  a = [:punch, 0]
  b = [:kick, 72]
  c = [:stops_bullets_with_hands, false]

  key_value_pairs = [a, b, c]

  Hash[key_value_pairs]
end

p artax

h = Hash.new([])
h[:a] << 1
h[:b] << 2

p h