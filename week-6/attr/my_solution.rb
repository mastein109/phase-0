#Attr Methods

# I worked on this challenge [by myself]

# I spent hours on this challenge.

# Pseudocode
=begin
# Input: a name
# Output: a greeting that uses name given
# Steps:
1. Create two classes
  first will initialize my name and define an instance variable to be used across classes
  second will initialize an instance of first class and include a method to display greeting
2. Make sure to allow instance variable to be used across classes
3. Assign the new greeting to object "greet"
4. Call the class that includes @name and greeting
=end


class NameData
  attr_accessor :name
  def initialize
    @name = "Mollie"
  end
end

class Greetings
  attr_accessor :name
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello # puts Hello #{name}! How wonderful to see you today.



# Reflection
=begin

Release 1
  What are these methods doing?
  These methods are allowing the user to change the values of the instance variables within the class.

  How are they modifying or returning the value of instance variables?
  By creating new instance variables assigned to the original ones and directly changing them.

Release 2
  What changed between the last release and this release?
  The main difference between this release and the last release is the use of attr_reader instead of what_is_age.

  What was replaced?
  The method that defined and displayed age was replaced.

  Is this code simpler than the last?
  Yes, it make the code cleaner.

Release 3
  What changed between the last release and this release?
  The code has been further refactored.

  What was replaced?
  The change_my_age method was replaced with attr_writer.

  Is this code simpler than the last?
  Yes.
---------------------------------------------------------------------------------------------------------------------------------------------

  What is a reader method?
  A reader method allows an instance variable to be displayed outside of the class.

  What is a writer method?
  A writer method allows for an instance variable to be modified or changed outside of the class.

  What do the attr methods do for you?
  Attr methods make code simpler and more condensed by changing a method including a number of lines to attr method that only uses one line.

  Should you always use an accessor to cover your bases? Why or why not?
  It is not recommended to use an accessor all the time because sometimes you do not want to allow the instance variables to be changed for security purposes.

  What is confusing to you about these methods?


=end