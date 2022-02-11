require 'pry'

class Player
  attr_reader :name, :pieces, :c_name, :c_pieces

  def initialize(name)
    @name = name
    @pieces = 21
    @c_name = "Computer Overlord"
    @c_pieces = 21
  end

  def place_piece
    puts "Which column would you like to drop a piece into?"
    puts "Please input the letter at the top of the column you want to pick."

    return gets.chomp
  end

end
