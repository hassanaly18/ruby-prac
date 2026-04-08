require "benchmark"

begin_time = Time.now 
sleep 0.3  #sleep for 0.3 seconds
end_time = Time.now
puts "Time taken is #{end_time - begin_time}"

puts 

def benchmark
  start_time = Time.now 
  yield
  end_time = Time.now

  end_time - start_time
end

time_taken = benchmark do
  sleep 0.1
end
puts "Time taken #{time_taken}"

puts 

puts Benchmark.measure {602214.times {3.14159 * 6.626068 }}


puts 
#------------------------------------------------------------

n=4000
Benchmark.bm do |benchmark|
  benchmark.report do
    a=[]; n.times { a = a + [n] }
  end
  benchmark.report do
    a=[]; n.times { a << n }
  end
  benchmark.report do
    a=[1..n].map {|number| number}
  end
end