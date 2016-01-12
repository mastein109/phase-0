# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[0][1][1][2][0] --> first solution
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

new_array = number_array.map do |element|
  if element.kind_of?(Array)
    element.map {|inner| (inner += 5) }
  else
    element += 5
  end
end


p new_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_namesly = startup_names.map { |element|
  if element.kind_of?(Array)
    element.map {|inner|
      if inner.kind_of?(Array)
        inner.map {|doubleinner|
          (doubleinner += "ly")}
      else
        (inner += "ly")
      end
      }
  else
    (element += "ly")
  end
  }

p startup_namesly

# Refactor:

startup_namesly = startup_names.flatten.map{|v| v += "ly"}

p startup_namesly

#Reflection
=begin

What are some general rules you can apply to nested arrays?
1. Read slowly and carefully through each nested array.
2. Break down the array on separate lines to see each nested array clearly.

What are some ways you can iterate over nested arrays?
You can iterate over nested arrays by using the standard each method, but on both the array and elements within arrays, so you are not only iterating through the outer array.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We decided to use both each and map. We used each to iterate through the array and elements within each array. In addition, we used map, which is generally the same as each, except it will apply the changes made after iteration.

=end


