# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [1] hour.

# Pseudocode

# 1. Iterate through array
# 2. If any integer in array is a multiple of 15, replace the integer with the word "FizzBuzz"
# 3. If any integer in array is a multiple of 5 only, replace integer with the word "Buzz"
# 4. If any integer in array is a multiple of 3 only, replace integer with the word "Fizz"




# Initial Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 15 == 0
      "FizzBuzz"
    elsif x % 5 == 0
      "Buzz"
    elsif x % 3 == 0
      "Fizz"
    else
      x
    end
  end
end


# Driver Code

#super_fizzbuzz([1,2,3,4,5,15,89])




# Reflection
# # What concepts did you review or learn in this challenge?
#   I reviewed creting methods and utilizing the map! method.
# # What is still confusing to you about Ruby?
#   I don't think anything is too confusing at this point. However, it takes
#   adjusting when switching back to Ruby after learning and working with JavaScript.
# # What are you going to study to get more prepared for Phase 1?
#   I am going to read more of the Well Grounded Rubyist book and do some practice exercises to solidify and get more comfortable when switching between Ruby and JavaScript.