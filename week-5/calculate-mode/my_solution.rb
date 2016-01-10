# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with Hagai Zwick]

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

=begin

# 0. Pseudocode

# What is the input?

1. Array([])

# What is the output? (i.e. What should the code return?)

1. array of most frequent values

# What are the steps needed to solve the problem?

1. create new method
2. takes array of numbers or strings as argument
3. create empty hash
4. count number of occurrences
  if value occurs > 1 copy into hash
  if no values occur more than once print original array
5. select values from hash that are most-frequent
6. print array of most frequent keys


=end

# 1. Initial Solution

def mode(array)
  count = Hash.new(0)
  array.each {|element| count[element] += 1}
  max = count.values.max
  count.keep_if {|key,value| value == max}
  count.keys
end

# 3. Refactored Solution



=begin
# 4. Reflection
Which data structure did you and your pair decide to implement and why?
We decided to utilize an array for this challenge.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I actually had an easier time breaking down the previous challenge into pseudocode rather than this challenge. I think this challenge had a little more detail when it came to pseudocode which made it more difficult to break down.

What issues/successes did you run into when translating your pseudocode to code?
My pair and I definitely had to change our pseudocode a few times. Besides editing the code before writing our method, we had to go back in the end and fine tune parts of it.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
The each method that iterates through arrays seems to frequently come in handy. Besides that method, we also implemented the keep_if method, which allowed us to keep only the numbers that had more than one occurrence.
=end