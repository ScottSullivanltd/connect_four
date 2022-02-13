require 'pry'
require './lib/board'
require './lib/player'
require '.lib/turn'

board = Board.new

puts "What is your name?"

name = gets.chomp
player1 = Player.new(name)
player2 = Player.new

puts "Hello #{name}! Your opponent is #{player2.name}"
puts "Welcome to Cory's and Scott's Connect 4 - Virtual Edition!"
puts "The rules are simple."
puts "Connect 4 of your 'X' pieces in a row before the computer does with their 'O' pieces."
puts "A winning row of 4 can be in a horizontal, vertical, or diagonal alignment."
puts "The game will prompt you for your column selection every turn."
puts "Your piece will then take the bottom most available position in the column."
puts "The player moves first, then the computer."


puts "Ready to play the game #{name}? Press 'S' to start or 'Q' to quit."

start_input = gets.chomp.capitalize

if start_input == 'S'
  #need a loop here to run the game again and until a certain variable == something
  board.print_board
  player1.player_column_choice

elsif start_input == 'Q'
  puts "We are sorry to see you go :("
  puts "Please reload the game when you want to play again."

else
  puts "That is not a valid input. Please reload the game and try again."
  puts "You must input the letter 'S' to start the game once you're on the menu."
end
