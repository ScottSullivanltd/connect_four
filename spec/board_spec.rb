require './lib/board'
require 'pry'

RSpec.describe Board do
  it "creates an instance of board class" do
    new_board = Board.new
    expect(new_board).to be_an_instance_of(Board)
  end

  it "prints a new board" do

    new_board = Board.new

    expect(new_board.print_board).to eq([[" A", " B", " C", " D", " E", " F", " G"],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]])
  end
end
