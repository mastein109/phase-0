# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [] hours on this challenge.

# Pseudocode
=begin
# Input:
  array of strings
# Output:
  results from random roll or error message for invalid input
# Steps:
  1. evaluate array and make sure it isn't empty
  2. If empty, return error message
     If not empty, return number of sides on die
  3. Randomly return one of strings from array
=end


# Initial Solution

class Die
  def initialize(array)
    if array == []
      raise ArgumentError.new("Invalid input. Please enter an array.")
    end
    @array = array
  end

  def sides
    return @array.length
  end

  def roll
    @array.shuffle[rand(@array.length)]
  end

end



# Refactored Solution
#I was not sure how to further refactor this class and its methods.


# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The main difference was the input. Instead of taking integer, the class was called with an array. This didn't change too much in regards to the logic.

What does this exercise teach you about making code that is easily changeable or modifiable?
Making code that is easily changeable and modifiable makes it, in a sense, reusable. I worked on this challenge with my solution from the original die class open.

What new methods did you learn when working on this challenge, if any?
For this challenge, I learned about the shuffle method. This method took the strings in the array and, as the method says, shuffled them around to change the order.

What concepts about classes were you able to solidify in this challenge?
I think the most solidified concept from this challenge was the instance variable. Even though we worked with instance variables last week, I was able to better understand this concept better through practice.

=end