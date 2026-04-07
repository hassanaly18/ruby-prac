puts [5,3].each

[4, 8, 15, 16, 23, 42].each { |e| puts e }

puts 

enumerator = [3,7,14].each
enumerator.each {|e| puts e+1}

enum = [0,-1, 3, 2,1,3].each_with_index

p enum.select {|element, index| element<index}


puts 

class Array
  def map_with_index(&block)
    return to_enum(:map_with_index) unless block_given?

    self.each_with_index.map do |element, index|
      block.call(element, index)
    end
  end
end

arr = ["a", "b", "c"]

result = arr.map_with_index do |el, i|
  "#{el}-#{i}"
end

p result