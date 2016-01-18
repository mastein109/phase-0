# A Nested Array to Model a Bingo Board SOLO CHALLENGE

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  input: call method
  output: a letter and random number (1-100)
  steps:
    1. create an array of given letters
    2. select a letter and random number (1-100)
    3. print to console

# Check the called column for the number called.
  input: called number in column
  output: true or false
  steps:
    1. compare number to array numbers
    2. find index in array that matches called letter
    3. check index in each nested array that matches called number

# If the number is in the column, replace with an 'x'
  input: called number
  output: board with x in place of number if matches called number
  steps:
    1. update the nested array with x if number matches

# Display a column to the console
  input: call method
  output: list of numbers
  steps:
    1. iterate over each nested array
    2. display column of numbers

# Display the board to the console (prettily)
  input: call method
  output: bingo board of numbers
  steps:
    1. call method and print to console
=end
# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
  end

  def display
    puts "[B   I   N   G   O]"
    for i in 0..4
      print @bingo_board[i].to_s.gsub('"', ' ').gsub(',', '')
      puts #newline
    end
  end

  def call
    @call_letter = @letters[rand(4)]
    @call_number = rand(99)+1
    puts "#{@call_letter}#{@call_number}!"
  end

  def check
    index = 0
    @letters.each_with_index do |l, i|
      if @call_letter == l
        index = i
      end
  end

    for num in 0..4 do
      if @bingo_board [num][index] == @call_number
        puts "This number exists on your board!"
        @bingo_board [num][index] = "X "
      end
    end
  end
end



# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.display


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  I think the prompts for each big step helped to write the more detailed pseudocode. I think I can still use some practice when it comes to pseudocode.

What are the benefits of using a class for this challenge?
  The use of a class is beneficial since each of the methods is related to one another and can be called directly on the BingoBoard.

How can you access coordinates in a nested array?
  You call array[outer][inner].

What methods did you use to access and modify the array?
  The main method I used to access the array was .each_with_index.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  A new method I learned was .gsub, which allowed me to use the original array and return a modified version without commas or quotation marks.

How did you determine what should be an instance variable versus a local variable?
  I chose to declare instance variables for variables that would be reused in more than one method, such as bingo_board.
=end
