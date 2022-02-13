require 'pry'
require './lib/player_sandbox'

class Board
attr_reader :board_array, :board_columns
attr_accessor :update_board

  def initialize
    @board_array = []
    @board_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
    @board_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[3] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]

    @board_columns = {
      A: [board_array[0][0], board_array[1][1], board_array[2][1], board_array[3][1], board_array[4][1], board_array[5][1], board_array[6][1]],
      B: [board_array[0][1], board_array[1][3], board_array[2][3], board_array[3][3], board_array[4][3], board_array[5][3], board_array[6][3]],
      C: [board_array[0][2], board_array[1][5], board_array[2][5], board_array[3][5], board_array[4][5], board_array[5][5], board_array[6][5]],
      D: [board_array[0][3], board_array[1][7], board_array[2][7], board_array[3][7], board_array[4][7], board_array[5][7], board_array[6][7]],
      E: [board_array[0][4], board_array[1][9], board_array[2][9], board_array[3][9], board_array[4][9], board_array[5][9], board_array[6][9]],
      F: [board_array[0][5], board_array[1][11], board_array[2][11], board_array[3][11], board_array[4][11], board_array[5][11], board_array[6][11]],
      G: [board_array[0][6], board_array[1][13], board_array[2][13], board_array[3][13], board_array[4][13], board_array[5][13], board_array[6][13]],
    }
  end

  def print_board
    @board_array.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end

  # def board_columns
  #   @board_columns = {
  #     column_A: [board_array[0][0], board_array[1][1], board_array[2][1], board_array[3][1], board_array[4][1], board_array[5][1], board_array[6][1]],
  #     column_B: [board_array[0][1], board_array[1][3], board_array[2][3], board_array[3][3], board_array[4][3], board_array[5][3], board_array[6][3]],
  #     column_C: [board_array[0][2], board_array[1][5], board_array[2][5], board_array[3][5], board_array[4][5], board_array[5][5], board_array[6][5]],
  #     column_D: [board_array[0][3], board_array[1][7], board_array[2][7], board_array[3][7], board_array[4][7], board_array[5][7], board_array[6][7]],
  #     column_E: [board_array[0][4], board_array[1][9], board_array[2][9], board_array[3][9], board_array[4][9], board_array[5][9], board_array[6][9]],
  #     column_F: [board_array[0][5], board_array[1][11], board_array[2][11], board_array[3][11], board_array[4][11], board_array[5][11], board_array[6][11]],
  #     column_G: [board_array[0][6], board_array[1][13], board_array[2][13], board_array[3][13], board_array[4][13], board_array[5][13], board_array[6][13]],
  #   }
  # end

  def update_board(board_columns)
    if
      @board_columns[:"p_input" || :"c_input"] == "."
      @board_columns[:"p_input" || :"c_input"] = @piece
    # elsif
    #   @board_columns[:"c_input"] == "."
    #   @board_columns[:"c_input"] = @piece
    end
    puts @print_board
  end

  def is_full?
    if @board_columns[:"p_input" || :"c_input"].include?(".")
      return false
    else
      return true
    end
  end

end
