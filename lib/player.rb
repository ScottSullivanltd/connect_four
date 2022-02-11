require 'pry'

class Player
  attr_reader :name, :pieces

  def initialize(name = "Computer Overlord")
    @name = name
    @pieces = 21
  end

  def player_column_choice #gets the user input and returns the input as a cap letter
    if :name == "Computer Overlord"
      



    else
      input = ""            #outer if loop to check if player is the computer or not needed here
      while input == "" || input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G" do
        puts "Which column would you like to drop a piece into?"
        puts "Please input the letter at the top of the column you want to pick."
        input = gets.chomp.capitalize

        if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
          return input #this does return the input
        else
          puts "That is not a valid response. Please input a letter from the top of a column."
        end
      end
    end
  end

end
