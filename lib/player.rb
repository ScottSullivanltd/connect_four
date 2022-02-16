require 'rspec'
require 'pry'
require './lib/board'
require './lib/turn'

class Player
<<<<<<< HEAD
  attr_reader :name
  attr_accessor :pieces
=======
  attr_reader :name, :column_choice, :board, :horizontal_method, :vertical_method, :board_array, :board_columns

>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
  def initialize(name = "Computer Overlord")
    @name = name
    @column_choice = ["A", "B", "C", "D", "E", "F", "G"]
    @board = board
    @board_array = board_array
    @board_columns = board_columns
  end

  def column_choice
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
end
