class Board
    attr_reader :grid
    def initialize(n)
        @grid = Array.new(n) { Array.new(n, '_')}
    end

    def valid?(position)
        row, col = position
        return false if row >= @grid.length || col >= @grid.length || row < 0|| col < 0
        true
    end

    def empty?(position)
        row, col = position
        return true if @grid[row][col] == '_'
        false
    end

    def place_mark(position, mark)
        row, col = position
        if !valid?(position) || !empty?(position)
            raise "Invalid position" 
        else
            @grid[row][col] = mark
        end
    end

    def print
        (0...@grid.length).each do |i| 
            p @grid[i]
        end
    end

    def win_row?(mark)
        @grid.each do |row|
            return true if row.all? {|m| m == mark}
        end
        false
    end

    def win_col?(mark)
        @grid.transpose.each do |row|
            return true if row.all? {|m| m == mark}
        end
        false
    end

    def win_diagonal?(mark)
        left = true
        right = true
        (0...@grid.length).each do |i|
            left = false if @grid[i][i] != mark
            right = false if @grid[i][-i-1] != mark
        end
        left || right
    end

    def win?(mark)
        return true if win_col?(mark) || win_row?(mark) || win_diagonal?(mark)
        false
    end

    def empty_positions?
        @grid.each.any? {|e| e.include?('_')}
    end

    def legal_positions
        arr = []
        (0...@grid.length).each do |i|
            (0...@grid.length).each do |j|
                arr << [i,j] if @grid[i][j] == '_'
            end
        end
        arr
    end
end