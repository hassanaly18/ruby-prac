def describe(user_info)
  p user_info
  "My name is #{user_info[0]} and I'm #{user_info[1]} years old."
end

user1 = ["Haris", 22]

puts describe(user1)

puts 

p 10/2
p 10/3
p 10.to_f / 3

puts

p 10.class
p (10.0).class
p (10.0/3)

puts 
#------------------------------------------------------

class VisualAcuity
  def initialize(subject, normal)
    @subject = subject
    @normal = normal    
  end
  def can_drive?
    (@subject.to_f / @normal) >= 0.5
  end  
end

class DrivingLicenseAuthority
  def initialize(name, age, visual_acuity)
    @name = name
    @age = age 
    @visual_acuity = visual_acuity
  end
  
  def valid_for_license?
		@age >= 18 && @visual_acuity.can_drive?
  end
  
  def verdict
    if valid_for_license?
	    "#{@name} can be granted driving license"
    else
      "#{@name} cannot be granted driving license"
    end
  end
end

acuity = VisualAcuity.new(6, 6)
person = DrivingLicenseAuthority.new("Hassan", 20, acuity)

puts person.verdict