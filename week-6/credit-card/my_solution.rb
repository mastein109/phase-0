# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Kyle Cierzan ].
# I spent [2] hours on this challenge.

# Pseudocode
=begin

# Input: Credit card number in the form of an integer
# Output: True or False to indicate authorization
# Steps:

CREATE a class
INITIALIZE the class by creating a method and defining instance variables
CONVERT input integer to array and split by every character
UNLESS the length of the array is 16, RETURN an argument error
CREATE A METHOD TO:
ITERATE over the array starting at the end and moving by even indexes, multiplying by two
ITERATE over the new array and IF the element is GREATER THAN 10 update that element to an array (creating a nested array)
SPLIT the nested arrays by character
FLATTEN array to one dimension
ADD every element in the flattened array
IF the total is divisible by 10, RETURN TRUE
ELSE RETURN FALSE

=end

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s.split('')
    @sum = 0

    unless @card_num.length == 16
      raise ArgumentError.new("Card number must be 16 digits")
    end
  end

  def check_card
    @nums_by_two = @card_num.each_with_index do |num,index|
      if index % 2 == 0
        @card_num[index] = num.to_i * 2
      else
        @card_num[index] = num.to_i
      end
    end


    @nested_two_digits = @nums_by_two.join.split('').map! {|num| num.to_i}

    @nested_two_digits.each do |num|
      @sum += num
    end

    if (@sum % 10).zero?
        return true
      else
        return false
      end
  end
end

# Refactored Solution

class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s.split('')
    @sum = 0

    unless @card_num.length == 16
      raise ArgumentError.new("Card number must be 16 digits")
    end
  end

  def check_card
    @card_num.each_with_index { |num,index| index % 2 == 0 ? @card_num[index] = num.to_i * 2 : @card_num[index] = num }

    @card_num.join.split('').map! {|num| @sum += num.to_i}


    if (@sum % 10).zero?
        return true
      else
        return false
      end
  end
end

#Driver Code
# my_card = CreditCard.new(4563960122001999)
# p my_card.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part was definitely handling the double digit numbers that were the product of every other digit * 2. We tried a few different attempts before finally figuring it out.

What new methods did you find to help you when you refactored?
A new method that we implemented in this challenge was .zero? .
This came in handy since ? defines a boolean, which was exactly what we needed.

What concepts or learnings were you able to solidify in this challenge?
I am definitely becoming more comfortable with both pseudocode and instance variables. As the saying goes "practice makes perfect" :).

=end