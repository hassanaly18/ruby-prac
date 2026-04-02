def sort_sorting(string)
  words = string.downcase.split(" ")
  words.sort
end

str = "Sort words in a sentence"

p sort_sorting(str)