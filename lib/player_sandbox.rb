require 'rspec'
require 'pry'
require './lib/board'
require './lib/turn_sandbox'
require './lib/start_sandbox'

class Player
  attr_reader :name

  def initialize(name = "Computer Overlord")
    @name = name
  end

  def column_choice #gets the computer input and returns the input as a cap letter
    if @name == "Computer Overlord"
      @column_choice =["A", "B", "C", "D", "E", "F", "G"].sample
    else
      puts "Which column would you like to drop a piece into?"
      puts "Please input the column letter that you want to pick."
      input = gets.chomp.capitalize
      if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
        return input
        @column_choice = input
      else
        puts "That is not a valid response. Please input a letter from the top of a column."
      end
    end
  end

  def is_winner?
  end

end
