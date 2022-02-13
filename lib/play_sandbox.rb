# require './lib/player_sandbox'
# require './lib/board'
# require 'pry'
#
# class Play
#   attr_reader :c_input, :p_input
#   def initialize
#     @piece_count = 42
#     @column_headers = board.board_array[0]  #["A", "B", "C", "D", "E", "F", "G"]
#   end
#
#   def computer_column_choice #gets the computer input and returns the input as a cap letter
#     if @name == "Computer Overlord"
#       c_input = @column_headers.sample
#       return c_input #this works!
#     end
#   end
#
#   def player_column_choice #gets the user input and returns the input as a cap letter
#     if @name != "Computer Overlord"
#       p_input = ""
#       while input == "" do
#         puts "Which column would you like to drop a piece into?"
#         puts "Please input the column letter that you want to pick."
#         p_input = gets.chomp.capitalize
#
#         if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
#           return input #this does return the input
#           puts "#{p_input} is a good choice!" # added a comment to recognize a valid input
#         else
#           puts "That is not a valid response. Please input a letter from the top of a column."
#         end
#         p_input = ""
#       end
#     end
#   end
#
#
#
# end
