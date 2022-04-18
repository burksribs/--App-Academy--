require './list.rb'

class TodoBoard
    def initialize
        @lists = {}
    end

    def get_command
        print "\nEnter a command: "
        cmd, label, *args = gets.chomp.split(' ')

        case cmd
        when 'ls'
            @lists.keys.each {|label| puts label}
        when 'showall'
            @lists.each_value(&:print)
        when 'mklist'
            @lists[label] = List.new(label)
        when 'mktodo'
            @lists[label].add_item(*args)
        when 'up'
            @lists[label].up(*args.map(&:to_i))
        when 'down'
            @lists[label].down(*args.map(&:to_i))
        when 'swap'
            @lists[label].swap(*args.map(&:to_i))
        when 'sort'
            @lists[label].sort_by_date!
        when 'priority'
            @lists[label].print_priority
        when 'print'
            if !args.empty?
                @lists[label].print_full_item(args[0].to_i)
            else
                @lists[label].print
            end
        when 'toggle'
            @lists[label].toggle_item(args[0].to_i)
        when 'rm'
            @lists[label].remove_item(args[0].to_i)
        when 'purge'
            @lists[label].purge
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized."
        end
        true
    end

    def run
        while get_command
        end
    end
end

TodoBoard.new.run
