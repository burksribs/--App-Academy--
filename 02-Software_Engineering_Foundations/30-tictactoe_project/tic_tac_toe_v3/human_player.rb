class HumanPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        input = nil
        puts "Enter position for mark ('row' 'col'): "
        input = gets.chomp.split(" ")
        input = input.map(&:to_i)
        while !legal_positions.include?(input)
            puts "Invalid input"
            puts "Enter position for mark ('row' 'col'): "
            input = gets.chomp.split(" ")
            raise 'sorry, that was invalid :(' if input.length != 2
            input = input.map(&:to_i)
        end
        input
    end
end