fd = IO.sysopen("new-fd", "w")

p IO.new(fd) #<IO:fd 5>

io_streams = Array.new
ObjectSpace.each_object(IO) {|x| io_streams << x}

# p io_streams

p STDOUT.class 
p STDOUT.fileno 

p STDIN.class
p STDIN.fileno

p STDERR.class
p STDERR.fileno

p $stdin.object_id
p STDIN.object_id

puts 

p $stdout.object_id
p STDOUT.object_id

puts 

p $stderr.object_id
p STDERR.object_id

# capture = StringIO.new
p capture