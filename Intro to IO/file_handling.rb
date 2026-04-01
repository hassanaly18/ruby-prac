mode = "r+"
file = File.open("Intro to IO/friend-list.txt", mode)
puts file.inspect
puts file.read
file.close

what = File.open("friend-list.txt", "w") do |file|
  file.puts "My friend is David"
end

p what

File.open("friend-list.txt", "r") {|file| puts file.read}


file = File.open("Intro to IO/master", "r+")
p file.read
file.rewind

buffer=""
p file.read(23, buffer)
p buffer

file.close

p File.read("Intro to IO/monk")

File.open("Intro to IO/monk") do |f|
  f.seek(20, IO::SEEK_SET)
  p f.read(10)
end

lines = File.readlines("Intro to IO/monk")
p lines
p lines[0]

File.open("Intro to IO/disguise", "r") do |f|
  puts f.read
end