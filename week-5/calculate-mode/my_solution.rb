# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with Hagai Zwick]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode(array)
  new_array = array.map.with_index {|value,i| [value, i]}
  count_hash = Hash.new
  new_array = new_array.each {|value,i| count_hash[i] = value}
  final_array = new_array.select{ |value| new_array.count(value) > 1  }
  return final_array
end





# 3. Refactored Solution




# 4. Reflection