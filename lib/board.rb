class Board
  attr_reader :print_board
  def initialize
    @print_board = print_board
  end

  def game_board
    @print_board = [
      [" A", "B", "C", "D", "E", "F", "G"],
      [" .",".",".",".",".",".","."],
      [" .",".",".",".",".",".","."],
      [" .",".",".",".",".",".","."],
      [" .",".",".",".",".",".","."],
      [" .",".",".",".",".",".","."],
      [" .",".",".",".",".",".","."]
    ]
      print_board.each do |row|
        puts row.join(' ')
      end
  end
end
