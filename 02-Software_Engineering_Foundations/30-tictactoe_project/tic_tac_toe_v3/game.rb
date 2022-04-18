require_relative 'board'
require_relative 'human_player'
require_relative 'computer_player'

require "byebug"

class Game
    def initialize(n, players)
        @players = players.map do |k, v| 
            if v == false
                HumanPlayer.new(k)
            else
                ComputerPlayer.new(k)
            end
        end
        @current_player = @players.first
        @board = Board.new(n)
    end

    def switch_turn
        @current_player = @players.rotate!.first
    end

    def play
        while @board.empty_positions?
            @board.print
            choices = @board.legal_positions
            pos = @current_player.get_position(choices)
            @board.place_mark(pos, @current_player.mark)
            if @board.win?(@current_player.mark)
                @board.print
                print "VICTORY "
                print @current_player.mark
                print " HAS WON"
                return true
            else
                self.switch_turn
            end
        end
        @board.print
        puts "DRAW"
    end
end