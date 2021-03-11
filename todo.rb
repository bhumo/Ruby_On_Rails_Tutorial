# ask for the todo list from the user
# and print it back

puts "What are you todos list today?"
#puts prints the data to the console
nextToDo = gets
#the data from console will be stored in the nexToDo

puts "So these are you todos list today?"
puts nextToDo

puts "\n\n\n";  #carraige return
puts "{ } #{nextToDo}" #string interpolation
puts "\n"
puts "{ } #{nextToDo} #{nextToDo}"
# In the above line we will see that the next time we do the internpolation it will start with
# new line.
# The output will be like : if nexToDo = "someValue"
# { } someValue
# someValue
puts "Can we output the result (7+1): #{7 + 1}"
