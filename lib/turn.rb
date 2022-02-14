require 'pry'
require './lib/player'

class Turn
  attr_reader  :name
  attr_accessor :board, :player, :input

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

  def drop_piece #method to drop piece into a column
    z = 0 #determines if the players turn is over or not
    if z == 0
      c = 6 #controls the array row selection

      while @board.board_array[1][convert].include?(".") != true
        if @name != "Computer Overlord"
          puts "This column is full. Please select another."
          @board.print_board
          @input = @player.player_column_choice
        else
          @input = @player.player_column_choice
        end
      end

      while c > 0 && z == 0 do
        if @board.board_array[c][convert].include?(".") == true #checks the lowest position in the chosen column for a playable space
          if @name != "Computer Overlord"
            @board.board_array[c][convert] = "X"
            @player.pieces -= 1
          else
            @board.board_array[c][convert] = "O"
            @player.pieces -= 1
          end
          z += 1

        else
          c -= 1
        end
      end

    end
  end



end
