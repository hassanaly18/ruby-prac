def length_finder(arr)
  arr2 = []

  arr.each do |word|
    arr2.append(word.length)
  end

  return arr2
end

array = ['Ruby','Rails','C42']

p length_finder(array)