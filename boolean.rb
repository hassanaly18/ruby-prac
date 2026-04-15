name = "Mark"
age = 23

puts name == "Mark"
puts age <= 35
puts age>=23 && (name=="Mark" || name == "Bob")

puts !(name == "Bob")

def checkSign(num)
  if num>0
    "#{num} is positive"
  elsif num<0
    "#{num} is negative"
  else
    "Its zero"
  end
end

puts checkSign(0)

unless age >= 18
    puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
end


def check_sign_t(num)
  num > 0 ? "#{num} is positive" : "#{num} is negative"
end

puts check_sign_t(7)

if 0
  puts "Hey, 0 is considered to be a truth in Ruby" 
end

#false, nil are false, 0 is true

# loop do #infinite loop
#   puts "this line will be executed for an infinite amount of time" 
# end

# loop do
#   monk.meditate
#   break if monk.nirvana?
# end

def ring(bell, n)
  n. times do
    puts "#{bell} is ringing"
  end
end

ring("bell", 5)