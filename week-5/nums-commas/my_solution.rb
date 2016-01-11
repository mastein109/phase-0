# Numbers to Commas Solo Challenge

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
# What is the input?
  -a positive integer
# What is the output? (i.e. What should the code return?)
  -A string properly formatted and divided by commas.
# What are the steps needed to solve the problem?
  1. Convert integer into array, separate into strings
    -reverse, commas added from right
  2. Determine array length
  3. Insert commas into array, every 4th space
  4. Unreverse, using reverse and join into string
  5. Output string joined with commas.
=end

# 1. Initial Solution
def separate_comma(num)
  num_array = num.to_s.reverse.split()
  num_array.each_with_index do |item, index|
    if (index+1)%4==0
      num_array.insert(index,",")
    end
  end
  return num_array.reverse.join
end

# 2. Refactored Solution

def separate_comma(num)
  num.to_s.reverse.chars.to_a.each_slice(3).to_a.map {|item| item.join("")}.join(",").reverse
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
I reread the problem several times before writing my pseudocode. Figuring out what was to be inputed and outputed was the easier part. The steps of the problem took a little more time to put into words since I had to convert things and then convert them back. In addition, I had to go back in the end and tweek my pseudocode a bit.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, it was definitely helpful to sort out what was happening in this challenge. However, I did have to add to my pseudocode along the way to adjust what I had figured out through writing the actual method.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
When refactoring, I used slice and map. I find that Ruby methods are very helpful, but at the same time confusing because the same problem can be solved by many different methods.

How did you initially iterate through the data structure?
Originally, I iterated through the data structure, in this case array, through each_with_index.

Do you feel your refactored solution is more readable than your initial solution? Why?
It took me a while to figure out the refactored solution. I think it is definitely shorter, but not necessarily simpler. My first solution is easier to read by a non coder since it is a bit (not completely) self explanatory compared to the refactored solution.

=end