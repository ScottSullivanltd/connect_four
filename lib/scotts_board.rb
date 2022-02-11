class Board
  attr_reader :new_board
  def initialize
    @new_board = new_board
  end

  new_board = [
    [" A", "B", "C", "D", "E", "F", "G"],
    [" .",".",".",".",".",".","."],
    [" .",".",".",".",".",".","."],
    [" .",".",".",".",".",".","."],
    [" .",".",".",".",".",".","."],
    [" .",".",".",".",".",".","."],
    [" .",".",".",".",".",".","."]
  ]

  new_board.each do |row|
    puts row.join(' ')
  end
end
