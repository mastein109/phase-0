#Full name greeting
puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name +'!'

#Bigger, better favorite number
puts 'What is your favorite number?'
fav_num = gets.chomp
big_num = (fav_num.to_i + 1)
puts 'That\'s awesome, but ' + big_num.to_s + ' is bigger and better!!'

# How do you define a local variable?
# -->A local variable is a variable that is defined within a method and can only affects that same method.
# How do you define a method?
# -->In order to define a method, you must use the keyword 'def' followed by the method_name, parameters, arguments, and close the method using the keyword 'end'
# What is the difference between a local variable and a method?
# --> The main difference between a local variable and a method is that a method can be called repeatedly and reused, while a local variable can only be used within its assigned method.
# How do you run a ruby program from the command line?
# -->A ruby program can be run in the command line by simply typing 'ruby file_name.rb'
# How do you run an RSpec file from the command line?
# -->An RSpec file can be run in the command line by typing 'rspec spec-file.rb'
# What was confusing about this material? What made sense?
# -->The most confusing part about variables and methods for me was remembering to convert all variables to a string when printing output.

#Links:
#-->https://github.com/mastein109/phase-0/tree/master/week-4/address/my_solution.rb
#-->https://github.com/mastein109/phase-0/tree/master/week-4/define-method/my_solution.rb
#-->https://github.com/mastein109/phase-0/tree/master/week-4/math/my_solution.rb
