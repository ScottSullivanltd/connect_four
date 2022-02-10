require 'pry'

class Board
attr_reader

  def initialize
    @board_array = []
  end

end

test_array = Array.new(7)
test_array[0] = [" A", " B", " C", " D", " E", " F", " G"]
test_array[1] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
test_array[2] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
test_array[3] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
test_array[4] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
test_array[5] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
test_array[6] = [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]
# puts test_array[0][0 .. 6]
# p test_array[0][0 .. 6]
test_array.each do |row|
  row.each do |col|
    print col
  end
  puts
end

binding pry
