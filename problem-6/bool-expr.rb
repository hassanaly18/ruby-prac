years_of_experience = 4
github_points = 293
languages_worked_with = ['C', 'Ruby', 'Python', 'Clojure']
applied_recently = false
age = 26

is_an_experienced_programmer = (years_of_experience >=2 || github_points>=500) && (age>=15 || applied_recently) 

puts is_an_experienced_programmer