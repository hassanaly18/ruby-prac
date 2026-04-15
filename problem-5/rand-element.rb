def random_select(array, n)
  arr = array.sample(n)
end

array = [1, 2, 3, 4, 5] 
n=2

p random_select(array, n)