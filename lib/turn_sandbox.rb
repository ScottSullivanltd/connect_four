require './lib/player_sandbox'
require './lib/board'
require './lib/start_sandbox'
require 'pry'

class Turn
  attr_reader :player, :computer, :player_column_choice, :computer_column_choice, :c_input, :p_input
  def initialize(player, computer)
    @player_column_choice = player_column_choice
    @computer_column_choice = computer_column_choice
    @column_headers = ["A", "B", "C", "D", "E", "F", "G"]
    @columns = Board.new
    # @human = human
    # @computer = computer
  end

  def computer_column_choice #gets the computer input and returns the input as a cap letter
    @c_input = ""
    while @c_input == "" do
      @c_input = ["A", "B", "C", "D", "E", "F", "G"].sample
      if c_input == "A"
        update_board(board.board_columns[:A])
        until board.board_columns[:A].is_full? #== true # do this for all
          true
          @c_input = ""
        end
      elsif c_input == "B"
        update_board(board.board_columns[:B])
        until board.board_columns[:B].is_full?
          true
          @c_input = ""
        end
      elsif c_input == "C"
        update_board(board.board_columns[:C])
        until board.board_columns[:C].is_full?
          true
          @c_input = ""
        end
      elsif c_input == "D"
        update_board(board.board_columns[:D])
        until board.board_columns[:D].is_full?
          true
          @c_input = ""
        end
      elsif c_input == "E"
        update_board(board.board_columns[:E])
        until board.board_columns[:E].is_full?
          true
          @c_input = ""
        end
      elsif c_input == "F"
        update_board(board_columns[:F])
        until board.board_columns[:F].is_full?
          true
          @c_input = ""
        end
      elsif c_input == "G"
        update_board(board.board_columns[:G])
        until board.board_columns[:G].is_full?
          true
          @c_input = ""
        end
      end
      puts "Computer Overlord has made its move!"
    end
  end

  def player_column_choice #gets the user input and returns the input as a cap letter
      @p_input = ""
      while p_input == "" do
        puts "Which column would you like to drop a piece into?"
        puts "Please input the column letter that you want to pick."
        @p_input = gets.chomp.capitalize
        if p_input == "A" || p_input == "B" || p_input == "C" || p_input == "D" || p_input == "E" || p_input == "F" || p_input == "G"
          # return p_input #this does return the input
          puts "#{p_input} could be a good choice!"
          if p_input == "A"
            update_board(board.board_columns[:A])
            until board.board_columns[:A].is_full?
              true
              puts "Column A is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "B"
            update_board(board.board_columns[:B])
            until board.board_columns[:B].is_full?
              true
              puts "Column B is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "C"
            update_board(board.board_columns[:C])
            until board.board_columns[:C].is_full?
              true
              puts "Column C is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "D"
            update_board(board.board_columns[:D])
            until board.board_columns[:D].is_full?
              true
              puts "Column D is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "E"
            update_board(board.board_columns[:E])
            until board.board_columns[:E].is_full?
              true
              puts "Column E is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "F"
            update_board(board.board_columns[:F])
            until board.board_columns[:F].is_full?
              true
              puts "Column F is full, please select a different column."
              @p_input = ""
            end
          elsif p_input == "G"
            @board.update_board(@columns.board_columns.key(6))
            until board.board_columns.key(6).is_full?
              true
              puts "Column G is full, please select a different column."
              @p_input = ""
            end
          end
        else
          puts "That is not a valid response. Please input a letter from the top of a column."
        end
        @p_input = ""
      end
  end


  # def player_turn
  #     player.player_column_choice
  #     if player.p_input == "A"
  #       update_board(board.board_columns[:A])  # Check for winner after each turn?
  #       until board.board_columns[:A].is_full?
  #         true
  #         puts "Column A is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "B"
  #       update_board(board.board_columns[:B])
  #       until board.board_columns[:B].is_full?
  #         true
  #         puts "Column B is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "C"
  #       update_board(board.board_columns[:C])
  #       until board.board_columns[:C].is_full?
  #         true
  #         puts "Column C is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "D"
  #       update_board(board.board_columns[:D])
  #       until board.board_columns[:D].is_full?
  #         true
  #         puts "Column D is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "E"
  #       update_board(board.board_columns[:E])
  #       until board.board_columns[:E].is_full?
  #         true
  #         puts "Column E is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "F"
  #       update_board(board.board_columns[:F])
  #       until board.board_columns[:F].is_full?
  #         true
  #         puts "Column F is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     elsif player.p_input == "G"
  #       update_board(board.board_columns[:G])
  #       until board.board_columns[:G].is_full?
  #         true
  #         puts "Column G is full, please select a different column."
  #         player.player_column_choice
  #       end
  #     end
  # end

  # def computer_turn
  #     player.computer_column_choice
  #     if player.c_input == "A"
  #       update_board(board.board_columns[:A])
  #       until board.board_columns[:A].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "B"
  #       update_board(board.board_columns[:B])
  #       until board.board_columns[:B].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "C"
  #       update_board(board.board_columns[:C])
  #       until board.board_columns[:C].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "D"
  #       update_board(board.board_columns[:D])
  #       until board.board_columns[:D].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "E"
  #       update_board(board.board_columns[:E])
  #       until board.board_columns[:E].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "F"
  #       update_board(board.board_columns[:F])
  #       until board.board_columns[:F].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     elsif player.c_input == "G"
  #       update_board(board.board_columns[:G])
  #       until board.board_columns[:G].is_full?
  #         true
  #         player.computer_column_choice
  #       end
  #     end
  #     puts "Computer Overlord has made its move!"
  # end
end
