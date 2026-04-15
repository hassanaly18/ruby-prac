#procs are just like block, but procs can be saved in variables, and the blocks cant

def some_method(proc)
  proc.call("Success")
end

proc1 = Proc.new {|str| puts "Procify #{str}"}

some_method(proc1)


#-----------------------------------------------------
#Block

def block_method1(nums)
  i = 0
  while i<nums.size
    yield(nums[i])
    i+=1
  end 
end

nums = [12,32,1,22,43]

block_method1(nums) {|n| puts "item: #{n}"}
puts
block_method1(nums) do |n|
  puts "Item: #{n}"
end 

def explicit_block(&block)
  block.call(89)
end

explicit_block() {|n| puts "The num is #{n}"}