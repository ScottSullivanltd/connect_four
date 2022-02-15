require 'pry'
require './lib/player'
require './lib/turn'

class Board
  attr_reader :board_array, :board_columns

  def initialize
    @board_array = []
    @board_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
    @board_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[3] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]

    # @board_columns = [
    #   [board_array[0][0], board_array[1][1], board_array[2][1], board_array[3][1], board_array[4][1], board_array[5][1], board_array[6][1]],
    #   [board_array[0][1], board_array[1][3], board_array[2][3], board_array[3][3], board_array[4][3], board_array[5][3], board_array[6][3]],
    #   [board_array[0][2], board_array[1][5], board_array[2][5], board_array[3][5], board_array[4][5], board_array[5][5], board_array[6][5]],
    #   [board_array[0][3], board_array[1][7], board_array[2][7], board_array[3][7], board_array[4][7], board_array[5][7], board_array[6][7]],
    #   [board_array[0][4], board_array[1][9], board_array[2][9], board_array[3][9], board_array[4][9], board_array[5][9], board_array[6][9]],
    #   [board_array[0][5], board_array[1][11], board_array[2][11], board_array[3][11], board_array[4][11], board_array[5][11], board_array[6][11]],
    #   [board_array[0][6], board_array[1][13], board_array[2][13], board_array[3][13], board_array[4][13], board_array[5][13], board_array[6][13]]
    # ]
  end

  def print_board
    # @board_array.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end
end
