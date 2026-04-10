class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given?
      array.each do |n|
        initial_value += yield(n)
      end
    else
      array.each do |n|
        initial_value+=n
      end
    end
    return initial_value
  end
end

my_array = MyArray.new([1, 2, 3, 4])
p my_array.sum
p my_array.sum(10) 
p my_array.sum(0) {|n| n ** 2 } 