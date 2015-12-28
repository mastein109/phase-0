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
