require 'date'

module Foo
  def self.extended(base)
    puts "Class #{base} has been extended with module #{self}"
  end 
end

class Bar
  extend Foo
end 

b1 = Bar.new 

module Weather
  def self.will_it_rain_on(date)
    "it depends"
  end
end

puts Weather.will_it_rain_on(Date.today)

#--------------------------------------------

module Math
  def self.square(num)
    num * num
  end
end

puts Math.square(6)