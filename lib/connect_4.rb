require 'pry'


p "What is your name?"

name = gets.chomp

p "Hello #{name}!"
p "Welcome to Cory's and Scott's Connect 4 - Virtual Edition!"
p "The rules are simple. Connect 4 of your 'X' pieces in a row to win."
p "A winning row can be horizontal, vertical, or diagonal."
p "The player moves first, then the computer."


p "Ready to play the game #{name}? Press 'S' to start or 'Q' to quit."

start_input = gets.chomp.capitalize

if start_input == 'S'


elsif start_input == 'Q'
  p "We are sorry to see you go :("
  p "Please reload the game when you want to play again."

else
  p "That is not a valid input. Please reload the game and try again."
  p "You must input the letter 'S' to start the game once you're on the menu."
end
