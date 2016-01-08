# Pad an Array

# I worked on this challenge [by myself, with David Valencia ]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
    (min_size - array.length).times do array << value
    end
  end
  return array
end

def pad(array, min_size, value = nil)
  new_array = []
  array.each do |name|
    new_array.push(name)
  end
  if new_array.length >= min_size
    return new_array
  else
    (min_size - new_array.length).times do  new_array.push(value)
    end
  end
  return new_array
end





# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
  array.fill(value, array.length, (min_size - array.length))
  end
  return array
end

def pad(array, min_size, value = nil)
   new_array = []
  array.each do |name|
    new_array.push(name)
  end
  if new_array.length >= min_size
    return new_array
  else
    new_array.fill(value, new_array.length, (min_size - new_array.length))
  end
  return new_array
end


=begin

# 4. Reflection
Were you successful in breaking the problem down into small steps?
I was surprised at how quickly my pair and I were able to break down the problem and write out our pseudocode since I normally have difficulty with writing pseudocode.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
After writing the pseudocode with my pair, we were quickly able to translate it into code. The only difficuly we had was figuring out the additional steps to the non-destructive method.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution for the destructive method was immediately successful. However, the non-destructive method took us a little extra time since we were not creating a new array, but rather copying the original right into the non-destructive one.

When you refactored, did you find any existing methods in Ruby to clean up your code?
When we refactored, we were surprised at how easy it was to find an existing Ruby method that would work with our method in less steps.

How readable is your solution? Did you and your pair choose descriptive variable names?
I believe our solution is descriptive and readable. In addition, both my pair and I were meticulous when it came to indendting, which makes the code a whole lot cleaner.

What is the difference between destructive and non-destructive methods in your own words?
A destructive method takes the original arguments, in this case an array and replaces it with the new array produced by the method. Non-destructive methods take a copy of the original array and create a new array to apply the method to. This way, Ruby will show you what happens when the method is called, but will not overwrite the original array given.

=end