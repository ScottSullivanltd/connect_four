require 'pry'
require './lib/player'
require './lib/turn'

class Board
  attr_reader :board_array, :board_columns, :board_rows, :vertical_method, :horizontal_method
  attr_accessor :test

  def initialize
    @board_array = []
    @board_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
    @board_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[3] = [" ", ".", " ", "O", " ", "O", " ", "O", " ", "O", " ", ".", " ", "."]
    @board_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @test = 0
    @board_columns = [
      [board_array[1][1], board_array[2][1], board_array[3][1], board_array[4][1], board_array[5][1], board_array[6][1]],
      [board_array[1][3], board_array[2][3], board_array[3][3], board_array[4][3], board_array[5][3], board_array[6][3]],
      [board_array[1][5], board_array[2][5], board_array[3][5], board_array[4][5], board_array[5][5], board_array[6][5]],
      [board_array[1][7], board_array[2][7], board_array[3][7], board_array[4][7], board_array[5][7], board_array[6][7]],
      [board_array[1][9], board_array[2][9], board_array[3][9], board_array[4][9], board_array[5][9], board_array[6][9]],
      [board_array[1][11], board_array[2][11], board_array[3][11], board_array[4][11], board_array[5][11], board_array[6][11]],
      [board_array[1][13], board_array[2][13], board_array[3][13], board_array[4][13], board_array[5][13], board_array[6][13]]
    ]
    @board_rows = [
      [board_array[6][1], board_array[6][3], board_array[6][5], board_array[6][7], board_array[6][9], board_array[6][11], board_array[6][13]],
      [board_array[5][1], board_array[5][3], board_array[5][5], board_array[5][7], board_array[5][9], board_array[5][11], board_array[5][13]],
      [board_array[4][1], board_array[4][3], board_array[4][5], board_array[4][7], board_array[4][9], board_array[4][11], board_array[4][13]],
      [board_array[3][1], board_array[3][3], board_array[3][5], board_array[3][7], board_array[3][9], board_array[3][11], board_array[3][13]],
      [board_array[2][1], board_array[2][3], board_array[2][5], board_array[2][7], board_array[2][9], board_array[2][11], board_array[2][13]],
      [board_array[1][1], board_array[1][3], board_array[1][5], board_array[1][7], board_array[1][9], board_array[1][11], board_array[1][13]],
    ]

    # @horizontal_method = horizontal_method
    # @vertical_method = vertical_method
  end

  def print_board
    @board_array.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end

  # def in_a_row
  #   ["X"] #|| ["O", "O", "O", "O"]
  # end

  def horizontal_method#(board_array)
    x = ["X", "X", "X", "X"]
    o = ["O", "O", "O", "O"]
    @board_rows.each do |row|
      t = 0
      s = 3
      b = []
      until b == x || b == o || t > 3
        b = []
        if row[t] == "X"
          b = row.slice(t..s)
          t += 1
          s += 1
        elsif row[t] == "O"
          b = row.slice(t..s)
          t += 1
          s += 1
        elsif row[t] == "."
          t += 1
          s += 1
        end
      end
      if b == x
        puts "You won with horizontal connect 4"
      elsif b == o
        puts "Computer Overlord wins with horizontal connect 4"
      end
      # row.each do |col|
      #   if col == "X"# || row.include?("O")
      #     a = []
      #     a << col.slice(0..3)
      #     binding.pry
      #     return true
      #   end
      # end
    end
     # return true if four_in_a_row
  end
# binding.pry
  # def vertical_method(col)
  #   @board_columns.each do |char|
  #     col.include?("X") || col.include?("O")
  #   end
  #    return true if four_in_a_row
  # end

  # def diagonal_method(board_array)
  #   @board_array.each do |row|
  #     row.each do |col|
  #     col.include?("X") || col.include?("O")
  #     end
  #   end
  #   return true if four_in_a_row
  # end
end
