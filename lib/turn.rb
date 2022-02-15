require './lib/player'
require './lib/board'
require 'pry'

class Turn
  attr_reader :input, :name, :player
  attr_accessor :board

  def initialize(input, board, name, player_var)
    @input = input
    @board = board
    @name = name
    @player = player_var
  end

  def convert
    if @input == "A"
      1
    elsif @input == "B"
      3
    elsif @input == "C"
      5
    elsif @input == "D"
      7
    elsif @input == "E"
      9
    elsif @input == "F"
      11
    else
      13
    end
  end

  def drop_piece #create control var for the row selection
    z = 0 #determines if the players turn is over or not
    if z == 0
      c = 6 #controls the array row selection

      while @board.board_array[1][convert].include?(".") != true
        puts "This column is full, please select another column."
        board.print_board
        @input = @player.column_choice
      end

      while c > 0 && z == 0 do
        if @board.board_array[c][convert].include?(".") == true #checks the lowest position in the chosen column for a playable space
          if @name != "Computer Overlord"
            @board.board_array[c][convert] = "X"
            puts "An excellent choice #{name}"
          else
            @board.board_array[c][convert] = "O"
            puts "Computer Overlord has made its move!"
          end
          z += 1
        else
          c -= 1
        end
      end
      if c == 0
        puts "That column is full. Please pick another"
      end
    end
  end

end
