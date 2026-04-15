def find_frequency(sentence, word)
  words = sentence.downcase.split(" ")
  return words.count(word.downcase)
end

sentence = "Ruby is The best language in the World"

puts find_frequency(sentence, "the")