def array_of_fixnums?(array)
  array.each do |element|
    return false unless element.is_a?(Integer)
  end
  return true
end

arr = [1,2,3,4,5,5,33,3]
p array_of_fixnums?(arr)