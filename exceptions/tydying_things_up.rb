begin
  eval "40/0"
rescue ZeroDivisionError => error 
  p error 
end


def zen 
  begin
    p eval "(40+2)/2"
    p eval "(40+2)\2"
  rescue SyntaxError => error 
    puts error.backtrace
  end
end

zen() 

def zen2
  begin     #code stops wherever there is an error in begin
    p eval "(40 + 2) / 2"
    p eval "(40 + 2) \ 2"
    p eval "4, 8, 15, 16, 23, 42"
  rescue SyntaxError => error
    puts error.backtrace
  end
end

zen2() 


def zen3?(object)
  if object.to_i == 42
    200
  else
    400
  end
end

if zen3?(42) == 200
  puts "Master loves you as he loves Jacob"
end

puts 
def zen4
  10.times do 
    answer = 42/0
  end
end

begin
  puts "Calling zen"
  zen4
rescue ZeroDivisionError => error 
  puts "Rescued from the ze method"
  puts error.backtrace
end

puts "End of main"


# def zen5
#   10.times do
#     answer = 42 / 0
#   end
# end

# begin
#   puts "Calling zen."
#   zen5
# end

# puts "End of main."

puts

p StandardError.ancestors
p ZeroDivisionError.ancestors
p SyntaxError.ancestors


puts
begin
  eval "40/0"
rescue StandardError => error 
  p error
end 

puts 


#making custom error classes
class InfinityError < StandardError
end

ie = InfinityError.new("Infinity error was raised..!")

begin
  if 1.0/0.0
    raise ie
  end
rescue InfinityError => error
  p error.message
end 

class KasayaError < StandardError
end

def robe(type)
  unless type.downcase == "kasaya"
    raise KasayaError, "Wrong robe!"
  end
  
  "Dharmaguptaka's " + type.capitalize + " Robe"
end

robe("Kasaya")