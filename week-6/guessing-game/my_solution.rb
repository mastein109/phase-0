# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [] hours on this challenge.

# Pseudocode
=begin
# Input:
     an integer
# Output:
  1. lower or higher than correct answer
  2. true, if guess was correct and false, otherwise
# Steps:
  1. call integer as argument
  2. if number greater than answer, return high
     if number less than answer, return low
     if number equal to answer, return correct
  3. if most recent guess correct, return true
     if most recent guess high or low, return false
=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @correct = false
  end

  def guess(int)
    if int > @answer
      @correct = false
      return :high
    elsif int < @answer
      @correct = false
      return :low
    else
      @correct = true
      return :correct
    end
  end

  def solved?
    @correct
  end
end

# Refactored Solution






# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

When should you use instance variables? What do they do for you?

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Why do you think this code requires you to return symbols? What are the benefits of using symbols?


=end