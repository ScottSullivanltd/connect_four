<<<<<<< HEAD
require 'pry'
require './lib/player'

class Turn
  attr_reader  :name
  attr_accessor :board, :player, :input
=======
require './lib/player'
require './lib/board'
require 'pry'

class Turn
  attr_reader :input, :name, :player
  attr_accessor :board
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726

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

<<<<<<< HEAD
  def drop_piece #method to drop piece into a column
=======
  def drop_piece #create control var for the row selection
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
    z = 0 #determines if the players turn is over or not
    if z == 0
      c = 6 #controls the array row selection

<<<<<<< HEAD
      while @board.board_array[1][convert].include?(".") != true #checks if column is full
        if @name != "Computer Overlord"
          puts "This column is full. Please select another."
          @board.print_board
          @input = @player.player_column_choice
        else
          @input = @player.player_column_choice
        end
=======
      while @board.board_array[1][convert].include?(".") != true
        if @name != "Computer Overlord"
          puts "This column is full, please select another column."
        end
        @input = @player.column_choice
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
      end

      while c > 0 && z == 0 do
        if @board.board_array[c][convert].include?(".") == true #checks the lowest position in the chosen column for a playable space
          if @name != "Computer Overlord"
            @board.board_array[c][convert] = "X"
<<<<<<< HEAD
            @player.pieces -= 1
          else
            @board.board_array[c][convert] = "O"
            @player.pieces -= 1
          end
          z += 1

=======
            puts "An excellent choice #{name}"
          else
            @board.board_array[c][convert] = "O"
            puts "Computer Overlord has made its move!"
          end
          z += 1
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
        else
          c -= 1
        end
      end
<<<<<<< HEAD

    end
  end

  def winner?





  end
=======
      if c == 0
        puts "That column is full. Please pick another"
      end
    end
  end

>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
end
