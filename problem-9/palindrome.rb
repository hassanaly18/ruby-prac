def palindrome?(sentence)
  d_stripped_sen = sentence.downcase.gsub(" ", "")
  d_stripped_sen == d_stripped_sen.reverse
end

p palindrome?("racecar")