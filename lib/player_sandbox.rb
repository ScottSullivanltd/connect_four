require 'rspec'
require 'pry'
require './lib/board'
require './lib/turn_sandbox'
require './lib/start_sandbox'

class Player
  attr_reader :name, :piece, :c_piece, :p_piece

  def initialize(name = "Computer Overlord")
    @name = name
    @c_piece = "O"
    @p_piece = "X"
  end

  def name
    @name = start.name
  end

  def piece
    if @name == "Computer Overlord"
      @piece = @c_piece
    elsif @name != "Computer Overlord"
      @piece = @p_piece
    end
  end

  def is_winner?
  end

  # def player_column_choice #gets the user/computer input and returns the input as a cap letter
  #   if @name == "Computer Overlord"
  #     c_input = @array.sample
  #     return c_input #this works!
  #   else
  #     input = ""
  #     while input == "" do
  #       puts "Which column would you like to drop a piece into?"
  #       puts "Please input the letter at the top of the column you want to pick."
  #       input = gets.chomp.capitalize
  #
  #       if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
  #         return input #this does return the input
  #       else
  #         puts "That is not a valid response. Please input a letter from the top of a column."
  #       end
  #       input = ""
  #     end
  #   end
  # end

end
