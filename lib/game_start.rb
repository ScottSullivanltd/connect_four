#this is just a placeholder file for now...
#I think connect_4.rb will be the actaul game starter..

# require './lib/player_sandbox'
# require 'pry'
#
# class Play
#   attr_reader :pieces
#   def initialize
#     @pieces = 21
#     @column = ["A", "B", "C", "D", "E", "F", "G"]
#   end
#
#   def player_column_choice #gets the user/computer input and returns the input as a cap letter
#     if @name == "Computer Overlord"
#       c_input = @column.sample
#       return c_input #this works!
#     else
#       input = ""
#       while input == "" do
#         puts "Which column would you like to drop a piece into?"
#         puts "Please input the letter at the top of the column you want to pick."
#         input = gets.chomp.capitalize
#
#         if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
#           return input #this does return the input
#         else
#           puts "That is not a valid response. Please input a letter from the top of a column."
#         end
#         input = ""
#       end
#     end
#   end
#
# end
