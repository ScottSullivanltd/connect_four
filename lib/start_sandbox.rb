require 'pry'
require './lib/board'
require './lib/player_sandbox'

class Start
  attr_reader :name
  def initialize
    @name = name
  end

  def get_name
    puts "What is your name?"
    @name = gets.chomp.capitalize
  end

  def game_start
    puts "Hello #{name}!"
    puts "Welcome to Cory's and Scott's Connect 4 - Virtual Edition!"
    puts "The rules are simple."
    puts "Connect 4 of your 'X' pieces in a row before the computer does with their 'O' pieces."
    puts "A winning row of 4 can be in a horizontal, vertical, or diagonal alignment."
    puts "The game will prompt you for your column selection every turn."
    puts "Your piece will then take the bottom most available position in the column."
    puts "The player moves first, then the computer."
    puts ""
    puts ""
    puts "Ready to play the game #{name}? Enter 'S' to start or 'Q' to quit."

    start_input = gets.chomp.capitalize

    if start_input == 'S'
      board = Board.new  #to create a board object if a game is initiated
      board.print_board
    elsif start_input == 'Q'
      puts "#{name}, we are sorry to see you go :("
      puts "Please reload the game when you want to play again."
    else
      puts "That is not a valid input. Please reload the game and try again."
      puts "You must input the letter 'S' to start the game once you're on the menu."
      #do we send them back to the welcome statement = put welcome statment as a method?
    end
  end

end
