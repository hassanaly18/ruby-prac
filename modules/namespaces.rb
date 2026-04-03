module Perimeter
  class Array
    def initialize
      @size = 400
    end
  end
end

arr = Perimeter::Array.new #array from the Perimeter module
arr2 = Array.new  #ruby's inbuilt array

p arr.class
p arr2.class  #scope resolution operator ::

#-----------------------------------------------------------
#-----------------------------------------------------------
module MyApp
  class User
  end
end

module AuthLib
  class User
  end
end

class Array
  def initialize
    @size = 400
  end
end

our_array = Array.new

p our_array.class

puts "\n\n"

module Dojo
  A=4
  module Kata
    B=8
    module Roulette
      class ScopeIn
        def push
          15
        end
      end
    end
  end
end

A=16
B=23
C=42

puts "A : #{A}"
puts "Dojo a : #{Dojo::A}"

puts

puts "B : #{B}"
puts "Dojo Kata B : #{Dojo::Kata::B}"

puts
puts "C : #{C}"
puts "Dojo Kata Roulette scopeIn push : #{Dojo::Kata::Roulette::ScopeIn.new.push}"


module RubyMonk
  module Parser
    class CodeParser
      def self.parse(str)
        str.upcase.split("")
      end
    end
  end
end

puts RubyMonk::Parser::CodeParser.parse("hello")

module Kata
  A=5
  module Dojo
    B=9
    A=7
    
    class ScopeIn
      def push
        ::A 
      end
    end
  end
end

A=10

puts "A => #{Kata::Dojo::ScopeIn.new.push}"
