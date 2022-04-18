require_relative 'board'
require_relative 'human_player'

require "byebug"

class Game
    attr_reader :current_player
    def initialize(n, *players_mark)
        @players = players_mark.map {|player| HumanPlayer.new(player)}
        @current_player = @players.first
        @board = Board.new(n)
    end

    def switch_turn
        @current_player = @players.rotate!.first
        @current_player
    end

    def play
        while @board.empty_positions?
            @board.print
            pos = @current_player.get_position
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