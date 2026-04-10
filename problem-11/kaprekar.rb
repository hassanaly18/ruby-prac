def kaprekar?(k)
  sq = (k*k).to_s 
  len = k.to_s.length

  right = sq[-len, len].to_i
  left = sq[0...-len].to_i

  (left+right) == k 
end


puts kaprekar?(9)
puts kaprekar?(297)
puts kaprekar?(10)