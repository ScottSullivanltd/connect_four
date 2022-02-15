require './lib/turn'
require 'rspec'
require 'pry'

RSpec.describe Turn do
  it "is an instance of Turn" do
    player = Player.new
    computer = Player.new
    board = Board.new
    player_turn = Turn.new(player.column_choice, board, player.name, player)

    expect(player_turn).to be_an_instance_of(Turn)
  end
  it "converts column choice to corresponding index" do
    player = Player.new("Scott")
    computer = Player.new
    board = Board.new
    player_turn = Turn.new("A", board, player.name, player)
    expect(player_turn.convert).to be(1)
  end

  it "drops a piece onto the board" do
    player = Player.new("Cory")
    computer = Player.new
    board = Board.new
    player_turn = Turn.new("A", board, player.name, player)
    player_turn.drop_piece

    expect(player_turn.board.board_array).to eq([[" A", " B", " C", " D", " E", " F", " G"],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."],
    [" ", "X", " ", ".", " ", ".", " ", ".", " ", ".", " ", ".", " ", "."]])
  end
end
