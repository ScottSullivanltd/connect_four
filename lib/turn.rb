require 'pry'

class Turn
  attr_reader :input, :name
  attr_accessor :board

  def initialize(input, board, name)
    @input = input
    @board = board
    @name = name
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
      # if c > 6
        while c > 0 && z == 0 do
          if @board.board_array[c][convert].include?(".") == true #checks the lowest position in the chosen column for a playable space
            if @name != "Computer Overlord"
              @board.board_array[c][convert] = "X"
            else
              @board.board_array[c][convert] = "O"
            end
            z += 1
          else
            c -= 1
          end
        end
        # puts "This column is full. Please pick another"
      #end
    end
  end



end
