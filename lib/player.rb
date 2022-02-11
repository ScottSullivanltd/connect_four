require 'pry'

class Player
  attr_reader :name, :pieces, :c_name, :c_pieces

  def initialize(name)
    @name = name
    @pieces = 21
    @c_name = "Computer Overlord"
    @c_pieces = 21
  end

  def place_piece #gets the user input and returns the input as a cap letter
    input = ""
    until input == "A" || "B" || "C" || "D" || "E" || "F" || "G" do
      puts "Which column would you like to drop a piece into?"
      puts "Please input the letter at the top of the column you want to pick."
      input = gets.chomp.capitalize

      if input == "A" || "B" || "C" || "D" || "E" || "F" || "G"
        return input
      else
        puts "That is not a valid response. Please input a letter at the top of a column."
      end
    end
  end

end
