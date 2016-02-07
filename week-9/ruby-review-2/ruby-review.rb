# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin
1. Take a string of words as an argument
2. Split the string of words at each space into an array
3. Reverse each word individually
4. Join the array with a space between each reversed word
=end


# Initial Solution

def reverse_words (string)
  string = string.split(' ')
  string.each do |word|
    word.reverse!
  end
  string = string.join(' ')
end

puts reverse_words('Dev Bootcamp is awesome!')


# Refactored Solution
#No further refactoring discovered.





# Reflection
=begin
What concepts did you review in this challenge?
  I reviewed conversion of a string into an array and used built in Ruby methods.
What is still confusing to you about Ruby?
  Determining when to use each built in method is still confusing to me. For instance, in this challenge you have to split the string and iterate through each index (word) and reverse rather than splitting and immediately reversing.
What are you going to study to get more prepared for Phase 1?
  I am going to review all of the Ruby loops and passing objects between functions.
=end

