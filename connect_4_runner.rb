require 'rspec'
require 'pry'
require './lib/board'
require './lib/player'
require './lib/turn'

puts ""
puts "What is your name?"

name = gets.chomp.capitalize
player = Player.new(name)
computer = Player.new

board = Board.new
# binding.pry

puts ""
puts "Hello #{name}!"
puts "Welcome to Cory's and Scott's Connect 4 - Virtual Edition!"
puts "Your opponent is #{computer.name}."
puts "The rules are simple:"
puts "Connect 4 of your 'X' pieces in a row before the computer does with its 'O' pieces."
puts "A winning row of 4 can be in a horizontal, vertical, or diagonal alignment."
puts "The game will prompt you for your column selection every turn."
puts "Your piece will then take the bottom most available position in the column."
puts "The player moves first, then the computer."
puts ""
puts "Ready to play the game #{name}? Press 'S' to start or 'Q' to quit."

start_input = gets.chomp.capitalize

if start_input == 'S'
  piece_count = 42
  until piece_count == 0

    if board.is_winner? != "X" || board.is_winner? != "O" || piece_count != 0
      board.print_board
      player_turn = Turn.new(player.column_choice, board, player.name, player)
      player_turn.drop_piece
      piece_count -= 1
      if board.is_winner? == "X"
        puts "You Won!"
        board.print_board
        break
      end

    end

    if board.is_winner? != "X" || board.is_winner? != "O" || piece_count != 0
      board.print_board
      # sleep 1
      puts "Computer Overlord is thinking"
      # sleep 1
      computer_turn = Turn.new(computer.column_choice, board, computer.name, computer)
      computer_turn.drop_piece
      piece_count -= 1
      if board.is_winner? == "O"
        puts "Computer Overlord Won!"
        board.print_board
        break
      end
    end

  end

  if piece_count == 0
    puts "The game is a Draw"
  end

elsif start_input == 'Q'
  puts "#{name}, we are sorry to see you go :("
  puts "Please reload the game when you want to play again."
else
  puts "That is not a valid input. Please reload the game and try again."
  puts "You must input the letter 'S' to start the game once you're on the menu."
end
