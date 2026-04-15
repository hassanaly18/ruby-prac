def non_duplicated_values(values)
  single = []

  values.each do |value|
    if values.count(value) == 1
      single << value
    end
  end
  return single
end

arr = [1,2,2,3,3,4,5]

p non_duplicated_values(arr)