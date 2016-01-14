# Your Names
# 1) Mollie
# 2) Jenna

# We spent [1.5] hours on this challenge.

# Bakery Serving Size portion calculator.
=begin
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

=end


#Refactor
#Define a method that takes item_to_make and num_of_ingredients as arguments
def serving_size_calc(item_to_make, num_of_ingredients)
  book = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # unless the item to make is in the book, raise an ArgumentError
  unless book.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Define variables
  serving_size = book[item_to_make] #Use value of book hash as serving size
  remaining_ingredients = num_of_ingredients % serving_size #create new variable so store num of ingredients divided by serving size
  suggested_items = "" #create new variable with an empty string
  leftover_ingredients = 0 #create new variable that sets default value to leftover ingredients

  # if there are no remaining ingredients, return a string confirming the amount to make
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else # iterate over the book hash to see if there are any remaining ingredients, if so evalute which items can be made and return that item with amount to be made
    book.each do |item,num|
      if remaining_ingredients >= num
        suggested_items = item
        leftover_ingredients = remaining_ingredients/book[suggested_items]
      end
    end
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: You can make #{leftover_ingredients} of #{suggested_items}."
  end
end


#Driver Code
#p serving_size_calc("cake", 7)

#Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned it is very important to name variables relevant to the topic of the program. For example, in this program the name given to the hash was library when the program was for a bakery. In addition, it is important to break up your code with blank lines and indents to improve readability.

Did you learn any new methods? What did you learn about them?
Even though we didn't use it, I learned about what case means. I learned it is another way to identify an if/else more specifically.

What did you learn about accessing data in hashes?
I learned that it is relatively easy to call a value in the hash by its key.

What concepts were solidified when working through this challenge?
This challenge made it very clear how essential it is to make sure your code is readable by using relative names, indents, spaces, and minimal code.
=end