# array

firstName = ["Bhumika", "Rekha", "Deepa"]
lastName = ["Gupta", "Gupta", "Sharma"]

# push() will append the given value to the array
firstName.push("Devki")
lastName.push("Gupta")

# we have array of strings so far let's try to add hetrogenous data
# such as integer and we can relate the array as the list of objects
# like we had in python

firstName.push(123)

puts firstName

firstName.pop()
# pop() will remove the last element in the list/array

puts firstName

# How to iterate an array

firstName.each { |elem| puts "firstName: #{elem}" }

# Here each is considered as a block.

lastName.map { |elem| puts "lastName: #{elem}" }

# Convert a string to array
# for more info - https://apidock.com/ruby/String/split
" now's  the time".split        #=> ["now's", "the", "time"]
" now's  the time".split(" ")   #=> ["now's", "the", "time"]
" now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
"1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
"hello".split(//)               #=> ["h", "e", "l", "l", "o"]
"hello".split(//, 3)            #=> ["h", "e", "llo"]
"hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]

"mellow yellow".split("ello")   #=> ["m", "w y", "w"]
"1,2,,3,4,,".split(",")         #=> ["1", "2", "", "3", "4"]
"1,2,,3,4,,".split(",", 4)      #=> ["1", "2", "", "3,4,,"]
"1,2,,3,4,,".split(",", -4)     #=> ["1", "2", "", "3", "4", "", ""]

"1:2:3".split(/(:)()()/, 2)     #=> ["1", ":", "", "", "2:3"]

"".split(",", -1)          #=>[]

# Join the array Back to String
#join(p1 = v1) public

#Returns a string created by converting each element of the array to a string, separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses an empty string.

["a", "b", "c"].join        #=> "abc"
["a", "b", "c"].join("-")   #=> "a-b-c"

# For nested arrays, join is applied recursively:

["a", [1, 2, [:x, :y]], "b"].join("-")   #=> "a-1-2-x-y-b"

# Filter in array is a block
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 20].filter { |elem| elem.even? }
puts a
# instead of iflter we can also use select
a = %w[ a b c d e f ]
puts a
b = a.select { |v| v =~ /[aeiou]/ }    #=> ["a", "e"]
puts "After selction "
puts b

# find(p1 = v1) public

#Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

#If no block is given, an enumerator is returned instead.

puts (1..100).detect   #=>#<Enumerator:0x000055c6261c5d30>
puts (1..100).find     #<Enumerator: 1..100:find>

puts (1..10).detect { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
puts (1..10).find { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
puts (1..100).detect { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35
puts (1..100).find { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35

# Problem 1. Given a nested array of first names and last names, return a new array with the full names.
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
# fill in code that will return a new array of the full names:
fullNames = []
names.each { |fN, lN| fullNames.push(fN + " " + lN) }
puts fullNames
#   ["Jhumpa Lahiri", "J.K Rowling", ...]

# Problem 2. Given two arrays books and authors, merge them and print who wrote which book.
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
# fill in code that will print:
#   Design As Art was written by Bruno Munari
#   Anathem was written by Neal Stephenson
#   ...
# Hint:
# This exercise will require a new method "with_index". Try running this in irb (after defining an array
# books):
books.map.with_index { |book, i| puts "#{book} was written by #{authors[i]}" }

#Problem 3. Print the given list of todos by category. (You haven't learned Hashes yet, so use only arrays.)

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"],
]
# Fill in code that will print:
#   money:
#     Send invoice
#     Pay rent
#     Pay taxes
#   organize:
#     Clean room
#     Arrange books
#   food:
#     Buy groceries
# Hints:
# 1.You should first build an array just for categories which looks like this:
#[["money", ["Send invoice", "Pay rent"]], ...]

#  2.When you find something from an array and it doesn't exist, then Ruby will return nil.
# You can check if something is nil like this:
nums = [1, 2, 3]
large_number = nums.find { |i| i > 10 }
if large_number == nil
  puts "No large numbers!"
else
  puts large_number
end

categories = []
todos.each { |subarray|
  if categories.length == 0
    categories.push([subarray[1]].push(subarray[0]))
    puts categories
    puts categories.length
  elsif categories.find { |categoryArray| categoryArray[0] == subarray[1] } == nil
    categories.push([subarray[1]].push(subarray[0]))
    #puts categories
    puts "#{subarray[0]} --- #{subarray[1]}"
  else
    row = categories.detect { |subA| subA[0] == subarray[1] }

    categories[row.index(subarray[1])].push(subarray[0])
    #puts row
  end
}
# Print the 2D array
categories.each { |category|
  category.each {
    |elem|
    puts "#{elem}"
  }
  puts "-----"
}
