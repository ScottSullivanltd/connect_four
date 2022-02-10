class MainMenu

  def welcome
    p "Welcome to Connect Four!"
    p "This game matches you against the computer."
    p "You are the 'X' pieces, the computer is the 'O' pieces."
    p "Players take turns placing pieces on the board by selecting a column with an open space."
    p "To win, connect 4 of your pieces in a row, a column, or a diagonal."
    p "If the computer does this before you do, you lose."
    p "If the boards gets full before a connect 4, it is a DRAW."
    p "________________________________________________________________________________________"
    p "Type 'p' to play a new game."
    p "Type 'q' to quit the game."
    p "_______________________________________________"
    input = gets.chomp.to_s
      if input == "q"
        exit
      elsif input != 'p'
        puts "Incorrect input.  Please enter 'p' to play or 'q' to exit."
      end
  end
end
