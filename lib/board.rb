require 'pry'

class Board
attr_reader :board_array

  def initialize
    @board_array = []
    @board_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
    @board_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[3] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
  end

  def print_board
    @board_array.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end


#   attr_reader :new_board
#   def initialize
#     @new_board = new_board
#   end

#   new_board = [
#     [" A", "B", "C", "D", "E", "F", "G"],
#     [" .",".",".",".",".",".","."],
#     [" .",".",".",".",".",".","."],
#     [" .",".",".",".",".",".","."],
#     [" .",".",".",".",".",".","."],
#     [" .",".",".",".",".",".","."],
#     [" .",".",".",".",".",".","."]
#   ]

#   new_board.each do |row|
#     puts row.join(' ')
#   end
# end
