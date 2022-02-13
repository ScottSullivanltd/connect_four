require 'rspec'
require 'pry'
require './lib/board'
require './lib/player_sandbox'
require './lib/turn_sandbox'
require './lib/start_sandbox'

# board = Board.new  -- moved this to line 28.5

# puts "What is your name?"
#
# name = gets.chomp
#
# puts "Hello #{name}!"
# puts "Welcome to Cory's and Scott's Connect 4 - Virtual Edition!"
# puts "The rules are simple."
# puts "Connect 4 of your 'X' pieces in a row before the computer does with their 'O' pieces."
# puts "A winning row of 4 can be in a horizontal, vertical, or diagonal alignment."
# puts "The game will prompt you for your column selection every turn."
# puts "Your piece will then take the bottom most available position in the column."
# puts "The player moves first, then the computer."
# puts ""
# puts ""
# puts "Ready to play the game #{name}? Enter 'S' to start or 'Q' to quit."
#
# start_input = gets.chomp.capitalize
#
# if start_input == 'S'
#   board = Board.new  #to create a board object if a game is initiated
#   board.print_board

new_game = Start.new
new_game.get_name
new_game.game_start

human = Player.new
computer = Player.new

turn = Turn.new(human, computer)
piece_count = 42
until piece_count == 0
  human_turn = turn.player_column_choice
  piece_count -= 1
  computer_turn = turn.computer_column_choice
  piece_count -= 1
  if human.is_winner? || computer.is_winner?
    break
  end
end

if human.is_winner?
  puts "You Won!  Winner winner pizza dinner!"
elsif computer.is_winner?
  puts "You Lost!  Computer Overlord dominates!"
else
  puts "The game is a Draw"
end

# elsif start_input == 'Q'
#   puts "We are sorry to see you go :("
#   puts "Please reload the game when you want to play again."
#
# else
#   puts "That is not a valid input. Please reload the game and try again."
#   puts "You must input the letter 'S' to start the game once you're on the menu."
#   #do we send them back to the welcome statement = put welcome statment as a method?
# end
