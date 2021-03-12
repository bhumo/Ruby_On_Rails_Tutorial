# Do the following to unserstand few functionalities of irb terminal of ruby
# fire up the irb terminal by typing irb in the terminal

puts "abc".capitalize
puts "abc".capitalize!
#puts "abc".upper
puts "abc".upcase
puts "ABCDSIJD".downcase
puts [10, 20, 30]
puts [10, 20, 30].sum
puts ([10, 20, 30].sum) / 3

def av(nums)
  nums.sum / nums.length
end

puts av([10, 20])
# in irb for reverse search in array use ctrl + R  and use ctrl + C to stop the search
# exit to quit the irb
