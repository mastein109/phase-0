##What does puts do?
Puts is a Ruby command that prints the output to the console with a new blank line following.

##What is an integer? What is a float?
An <b>integer</b> is any whole number from -infinity to infinity. For example, an integer could be 4, 8, -1,0000, -456, etc.
<br>
A <b>float</b> is any number with decimal places attached to the whole number. For example a float could be 3.4 or -3.45 or 3.675, etc.

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Float division will return the quotient including decimal places, while integer division will return the whole number, rounded down. For instance, you are purchasing tickets to a concert. If you had $100 to spend and tickets were $30, you would only be able to buy 3 tickets. The seller wouldn't, for instance, sell you 3.333 tickets because you can't share a seat with 2/3 more of a person, nor would you be sold 4 tickets without $20 more.

##Hours in a year
```ruby
hours = 24
days = 365
hours_in_a_year = hours * days
puts hours_in_a_year
8760
=> nil
```

##Minutes in a decade
```ruby
decade = 10
minutes = 60
puts hours_in_a_year * minutes * decade
5256000
=> nil
```

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses operator signs to compute addition, subtraction, multiplication, and division of numbers. The operator signs are generally the same as you would see written, such as addition (+), subtraction (-), multiplication (*), and division (/). The only difference is that Ruby will output your answser, the same as your input, unless you tell the interpreter to do otherwise.

##What are strings? Why and when would you use them?
Strings are characters, such as letters or words, enclosed in single quotations. Strings are used when printing, inputing, and returning sentences, words, or letters.

##What are local variables? Why and when would you use them?
Local variables are variables that begin with a lower case or underscore. They are defined and accessed only within the block of initialization.

##How was this challenge? Did you get a good review of some of the basics?
This challenge was somewhat simple for me only because I had done my mandatory pairing and GPS sessions previously, due to a busy schedule. However, it was good to go back to the basics that I had learned in codeacademy as a refresher.

##Links to Exercises
Defining Variables:
https://github.com/mastein109/phase-0/blob/master/week-4/defining-variables.rb

Simple String Methods:
https://github.com/mastein109/phase-0/blob/master/week-4/simple_string.rb

Local Variables and Basic Arithmetical Operations:
https://github.com/mastein109/phase-0/blob/master/week-4/basic-math.rb
