class HumanPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position
        puts "Enter position for mark ('row' 'col'): "
        input = gets.chomp.split(" ")
        input = input.map(&:to_i)
        raise "Invalid input" if input.length > 2 || input.length < 0
        input
    end
end