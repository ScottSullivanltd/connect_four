require 'pry'

class Player
  attr_reader :name, :pieces, :c_name, :c_pieces

  def initialize(name)
    @name = name
    @pieces = 21
    @c_name = "Computer Overlord"
    @c_pieces = 21
  end



end
