# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode
=begin
# Input:
  -number of sides
# Output:
  -results from a random roll and an ArgumentError or error message if invalid input is entered.
# Steps:
  1. Create instance variable
  2. If input invalid or > 1, return ArgumentError
     If not, return number of sides based on input
  3. Randomly choose a number between 1 and the number of sides input
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Invalid input. Please enter a number > 0.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Invalid input. Please enter a number > 0.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError occurs and is returned to user when the input is wrong and does not match exception within method.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I learned about the ArgumentError and how to use one. In Ruby you have to declare an exception using 'unless' and then use raise to return an argument error if the input does not match exception. In addition, I learned about 'rand' which returns a random number between parameters given.

What is a Ruby class?
A Ruby class groups together a set of methods, descriptions, and principals all pertaining to the same group of objects.

Why would you use a Ruby class?
A Ruby class comes in handy when grouping together objects that call for the same methods, etc.

What is the difference between a local variable and an instance variable?
A local variable is called and used within a method where it has been defined. An instance variable is defined and used for an instance in a class and can only be used for that instance.

Where can an instance variable be used?
An instance variable can be used only within the class it was defined.
=end