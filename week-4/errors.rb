# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 170
# 3. What is the type of error message?
# => Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => the interpreter did not expect end-of-input, rather it expected keyword_end
# 5. Where is the error in the code?
# => The interpreter did not expect end-of-input after the '.' in the commented message
# 6. Why did the interpreter give you this error?
# => The method is never called and all the interpreter reads is the comment.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => Undefined variable
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us there is an undefined local variable of method 'south_park'
# 4. Where is the error in the code?
# => The error is in the the "main" section of this code
# 5. Why did the interpreter give you this error?
# => Ruby does not allow undefined variables. Arguments must be assigned to variables.
# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# => 49
# 2. What is the type of error message?
# => Undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us there is an undefined method 'cartman'
# 4. Where is the error in the code?
# => The error is in the main code, the undefined method.
# 5. Why did the interpreter give you this error?
# => Ruby does not allow an empty method with no parameters.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 64
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us that there are 1 for 0 arguments provided
# 4. Where is the error in the code?
# => The error is in the parameters where the method cartmans_phrase is called
# 5. Why did the interpreter give you this error?
# => The method does not have any parameters and an unacceptable argument is called.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# => 83
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us that there are 0 for 1 argumets provided
# 4. Where is the error in the code?
# => The error is in the empty parameters on line 87
# 5. Why did the interpreter give you this error?
# => Ruby does not allow a method to contain empty or null parameters.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 104
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us the argument error is 1 for 2 arguments provided
# 4. Where is the error in the code?
# => The error is in the arguments where the method is called
# 5. Why did the interpreter give you this error?
# => The method takes two arguments and is only being called with one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 123
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us the string can't be coerced into Fixnum
# 4. Where is the error in the code?
# => The error is in the string
# 5. Why did the interpreter give you this error?
# => You can't multiply an integer by a string. In Ruby you can only multiply a string by an integer, which would result in that string being printed i number of times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 138
# 2. What is the type of error message?
# => Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us 'divided by 0'
# 4. Where is the error in the code?
# => The error is in the division problem
# 5. Why did the interpreter give you this error?
# => Ruby does not allow division of an integer by zero. The only exception is dividing by an exact 0.0 or float.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 154
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter tells us that it cannot load such a file.
# 4. Where is the error in the code?
# => The error is the file name within the argument
# 5. Why did the interpreter give you this error?
# => The interpreter returns this error because it cannot load the file 'cartmans_essay.md' This is primarily because this file does not exist on my computer.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
# => The errors I found most difficult to read were argument errors. It is difficult to read these errors because there are several argument errors, such as 1 for 0, 1 for 2, 0 for 1, and you must analyze the interpreters information carefully
# How did you figure out what the issue with the error was?
# => In order to figure out the issue with the error, it is important to break down each part of the error returned by the interpreter and apply it to the code input.
# Were you able to determine why each error message happened based on the code?
# => I was able to determine each error message based on code, with the exception of the first error in which the method was not called.
# When you encounter errors in your future code, what process will you follow to help you debug?
# => In the future, I will break down the code into pieces and then reconcile the error message with my code.

