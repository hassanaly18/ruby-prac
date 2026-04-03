require "yaml"
# class CerealBox
#   attr_accessor :ounces, :contains_toy

#   def initialize(ounces, contains_toy)
#     @ounces=ounces
#     @contains_toy=contains_toy
#   end

#   def self.from_s(string)
#     ounces = 0
#     contains_toy = false

#     string.each_line do |field|
#       value = field.split(":")[1].strip
#       ounces = value.to_i if field.include?("contains_toy")
#       contains_toy = to_boolean(value) if field.include?("contains_toy")
#     end

#     CerealBox.new(ounces, contains_toy)
#   end 

#   def self.to_boolean(str)
#     str =="true"
#   end

#   def to_s
#     "@ounces = #{@ounces}, @contains_toy = #{@contains_toy}"
#   end
# end

# cb = CerealBox.new(3, true)
# # puts cb 
# puts "example to_s: #{cb.to_s}"
# puts "example from_s: #{CerealBox.from_s(CerealBox.new(10, false).to_s)}"


class Ogre
  def initialize(strength, speed)
    @strength = strength
    @speed = speed
  end

  def self.deserialize(yaml_string)
    YAML::load(yaml_string)
  end

  def serialize
    YAML::dump(self)
  end

  def to_s
    "Ogre: [strength = #{@strength}, speed = #{@speed}]"
  end
end


wendigo = Ogre.new(47,3)
yaml = wendigo.serialize
puts "the yaml looks like this"
p yaml
puts "Its just a boring old string: #{yaml.class}"
puts 
shrek = Ogre.new(62, 12)
fiona = Ogre.new(66, 37)
ogres = [shrek, fiona]
puts "We can even serialize arrays! They're just another object. #{ogres}"




class Ogre
  attr_accessor :strength, :speed, :smell
  def initialize(strength, speed, smell)
    @strength = strength
    @speed = speed
    @smell = smell
  end
end

class Dragon
  attr_accessor :strength, :speed, :color
  def initialize(strength, speed, color)
    @strength = strength
    @speed = speed
    @color = color
  end
end

class Fairy
  attr_accessor :strength, :speed, :intelligence
  def initialize(intelligence)
    @strength = 1
    @speed = 42
    @intelligence = intelligence
  end
end

def save_game(characters)
	yaml_data = YAML.dump(characters)
  File.open("inheritance/savegame.yaml", "w") do |file|
    file.write(yaml_data)
  end
end

def load_game
  yaml_data= File.read("inheritance/savegame.yaml")

  YAML.load(yaml_data)
end

characters = {
  ogres: ogres,
  dragons: dragons,
  fairies: fairies
}

save_game(characters)

puts "Game saved!"

loaded_characters = load_game()

puts "Game loaded!"

p loaded_characters