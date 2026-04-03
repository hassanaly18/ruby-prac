class Calculator
  def add(a,b)
    a+b
  end

  def subtract(a,b)
    a-b 
  end
end

puts Calculator.new.add(4,5)
puts Calculator.new.subtract(4,5)