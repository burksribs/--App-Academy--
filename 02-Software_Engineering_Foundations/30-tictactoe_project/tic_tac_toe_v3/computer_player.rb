class ComputerPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        puts "Computer playing: "
        pos = legal_positions.sample
        print "Computer chose position "
        print pos
        puts ""
        pos
    end
end