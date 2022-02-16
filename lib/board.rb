require 'pry'
<<<<<<< HEAD

class Board
attr_reader :board_array
=======
require './lib/player'
require './lib/turn'

class Board
  attr_reader :board_array, :board_columns, :board_rows, :board_diagonals
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726

  def initialize
    @board_array = []
    @board_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
    @board_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[3] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
    @board_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
<<<<<<< HEAD
=======
    @x = ["X", "X", "X", "X"]
    @o = ["O", "O", "O", "O"]
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
    @board_diagonals = [
      [board_array[1][1], board_array[2][3], board_array[3][5], board_array[4][7], board_array[5][9], board_array[6][11]],
      [board_array[2][1], board_array[3][3], board_array[4][5], board_array[5][7], board_array[6][9]],
      [board_array[3][1], board_array[4][3], board_array[5][5], board_array[6][7]],
      [board_array[1][3], board_array[2][5], board_array[3][7], board_array[4][9], board_array[5][11], board_array[6][13]],
      [board_array[1][5], board_array[2][7], board_array[3][9], board_array[4][11], board_array[5][13]],
      [board_array[1][7], board_array[2][9], board_array[3][11], board_array[4][13]],
      [board_array[1][13], board_array[2][11], board_array[3][9], board_array[4][7], board_array[5][5], board_array[6][3]],
      [board_array[2][13], board_array[3][11], board_array[4][9], board_array[5][7], board_array[6][5]],
      [board_array[3][13], board_array[4][11], board_array[5][9], board_array[6][7]],
      [board_array[1][11], board_array[2][9], board_array[3][7], board_array[4][5], board_array[5][3], board_array[6][1]],
      [board_array[1][9], board_array[2][7], board_array[3][5], board_array[4][3], board_array[5][1]],
      [board_array[1][7], board_array[2][5], board_array[3][3], board_array[4][1]]
    ]
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
  end

  def print_board
    @board_array.each do |row|
      row.each do |col|
        print col
      end
      puts
    end
  end

<<<<<<< HEAD

=======
  def horizontal_method
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
        return x
      elsif b == o
        return o
      end
    end
  end
  def vertical_method
    x = ["X", "X", "X", "X"]
    o = ["O", "O", "O", "O"]
    @board_columns.each do |col|
      t = 0
      s = 3
      b = []
      until b == x || b == o || t > 2
        b = []
        if col[t] == "X"
          b = col.slice(t..s)
          t += 1
          s += 1
        elsif col[t] == "O"
          b = col.slice(t..s)
          t += 1
          s += 1
        elsif col[t] == "."
          t += 1
          s += 1
        end
      end
      if b == x
        return x
      elsif b == o
        return o
      end
    end
  end

  def diagonal_method
    x = ["X", "X", "X", "X"]
    o = ["O", "O", "O", "O"]
    @board_diagonals.each do |diag|
      t = 0
      s = 3
      b = []
      until b == x || b == o || t > 2
        b = []
        if diag[t] == "X"
          b = diag.slice(t..s)
          t += 1
          s += 1
        elsif diag[t] == "O"
          b = diag.slice(t..s)
          t += 1
          s += 1
        elsif diag[t] == "."
          t += 1
          s += 1
        end
      end
      if b == x
        return x
      elsif b == o
        return o
      end
    end
  end

  def is_winner?
    if horizontal_method == @x || vertical_method == @x || diagonal_method == @x
      return "X"
    elsif horizontal_method == @o || vertical_method == @o || diagonal_method == @o
      return "O"
    end
  end
>>>>>>> 74100ae0388ec427b1e80fa181bdc46de2fe4726
end
