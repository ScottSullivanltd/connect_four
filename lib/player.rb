require 'rspec'
require 'pry'
require './lib/board'
require './lib/turn'

class Player
  attr_reader :name, :column_choice, :board, :horizontal_method, :vertical_method, :board_array, :board_columns

  def initialize(name = "Computer Overlord")
    @name = name
    @column_choice = ["A", "B", "C", "D", "E", "F", "G"]
    @board = board
    @horizontal_method = horizontal_method
    @vertical_method = vertical_method
    @board_array = board_array
    @board_columns = board_columns
  end

  def column_choice #gets the computer input and returns the input as a cap letter
    if @name == "Computer Overlord"
      @column_choice.sample
    else
      input = ""
      while input == "" do
        puts "Which column would you like to drop a piece into?"
        puts "Please input the column letter that you want to pick."
        input = gets.chomp.capitalize
        if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
          return input
          @column_choice = input
        else
          puts "That is not a valid response. Please input a letter from the top of a column."
        end
        input = ""
      end
    end
  end

  def is_winner?
    return false unless @board.horizontal_method #|| @board.vertical_method(board_columns)
    true
  end
end
