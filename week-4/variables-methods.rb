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
