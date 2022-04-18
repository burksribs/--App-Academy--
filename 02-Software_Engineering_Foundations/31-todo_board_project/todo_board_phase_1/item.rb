class Item
    attr_reader :deadline
    attr_accessor :title, :description
    def self.valid_date?(date_string)
        year, month, day = date_string.split("-").map(&:to_i)
        return false if year.to_s.length != 4
        return false if !(0..12).include?(month)
        return false if !(0..31).include?(day)
        true
    end

    def initialize(title, deadline, description)
        raise "Invalid date" if !Item.valid_date?(deadline)
        @title = title
        @deadline = deadline
        @description = description
    end

    def deadline=(new_deadline)
        raise "Invalid date" if !Item.valid_date?(new_deadline)
        @deadline = new_deadline
    end
end