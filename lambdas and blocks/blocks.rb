def calculate(num)
  yield(num) if block_given?
end

calculate(7){ |num| puts num}

[1, 2, 3].each do |num|
  puts num
end