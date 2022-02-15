require './lib/player'
require 'pry'
require 'rspec'

RSpec.describe Player do
  it "creates an instance of the Player class" do
    player = Player.new

    expect(player).to be_an_instance_of(Player)
  end

  it "takes a name for one player and defaults other player to be computer" do
    player = Player.new('Cory')
    computer = Player.new

    expect(player.name).to eq('Cory')
    expect(computer.name).to eq("Computer Overlord")
  end

  it "gets a column choice from the computer" do
    computer = Player.new

    expect(["A", "B", "C", "D", "E", "F", "G"]).to include(computer.column_choice)
  end
end
