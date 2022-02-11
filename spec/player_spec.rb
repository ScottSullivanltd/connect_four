require './lib/player'
require 'pry'
require 'rspec'

RSpec.describe Player do
  it 'creates an instance of the Player class' do
    expect(player = Player.new).to be_an_instance_of(Player)
  end

  it 'gets the column choice of the player and the computer' do
    player1 = Player.new
    player2 = Player.new('Cory')

    expect(["A", "B", "C", "D", "E", "F", "G"]).to include(player1.player_column_choice)
    expect(["A", "B", "C", "D", "E", "F", "G"]).to include(player2.player_column_choice)
  end

end
