def number_shuffle(number)
  no_of_combs = number.to_s.length == 3 ? 6 : 24
  digits = number.to_s.split(//)

  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combs
  combinations.uniq.sort
end

p number_shuffle(983)