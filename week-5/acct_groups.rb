=begin
Pseudocode
# Input:
 list of names
# Output:
 names from list divided in groups of 4 or 5 --at least 3
# Steps:
 1. define method that accepts list or array as paramater
 2. calculate how many items are in the array
 3. divide number of items by 3 with 0 remainder
 4. input groups of people in new hash
=end


def acc_group(array)
  group_size = 0
  amt_groups = 0
for x in (4..5) do
  if array.size % x >= 3 || array.size % x == 0
    group_size = x
    amt_groups = array.size/x
  else (array.size % 4 < 3) && (array.size % 5 < 3)
      group_size = 4
      num_groups = array.size / 4 + 1
  end
end
  group_hash = Hash.new{|v, k| v[k]=[]}
  group_num = 1
  array.each do |person|
    group_hash[group_num]<< person
    group_num += 1
    if group_num > amt_groups
      group_num = 1
    end
  end
  puts group_hash
end

=begin
What was the most interesting and most difficult part of this challenge?
The most difficult part of this challenge was having the method divide not only the list into groups, but make sure the groups include at least 3 people.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
I have definitely gotten better at pseudocode through practice, but there is a lot of room for improvement.

Was your approach for automating this task a good solution? What could have made it even better?
I think my solution was good since it covered all of the guidelines to create a group. I'm not sure what would have made it better at this moment, but through more research and reviewing of my peers methods, I'm sure I will gain ideas and knowledge in regards to making my method better.

What data structure did you decide to store the accountability groups in and why?
I decided to use a hash so that I could classify each group by a number(key) and include the names of that group(values).

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I didn't exactly refactor my solution, but rather ran into a few errors before coming to my final solution.
=end


