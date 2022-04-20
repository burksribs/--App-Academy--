class Array
    def my_each(&prc)
        self.length.times { |e| prc.call(self[e])}
        self
    end

    def my_select(&prc)
        selected = []
        self.my_each { |e| selected << e if prc.call(e) }
        selected
    end

    def my_reject(&prc)
        rejected = []
        self.my_each do |e| 
            rejected << e if !prc.call(e) 
        end
        rejected
    end

    def my_any?(&prc)
        self.my_each do |e|
            return true if prc.call(e)
        end
        return false
    end

    def my_all?(&prc)
        self.my_each do |e|
            return false if !prc.call(e)
        end
        return true
    end

    def my_flatten
        flattened = []
        self.my_each do |e|
            if e.is_a?(Array)
                flattened.concat(e.my_flatten)
            else
                flattened << e
            end
        end
        flattened
    end

    def my_zip(*args)
        zip = []
        
        self.length.times do |i|
            subzip = []
            subzip << self[i]

            args.my_each do |arr|
                subzip << arr[i]
            end
            zip << subzip
        end
        zip
    end

    def my_rotate(positions = 1)
        split_idx = positions % self.length
        
        self.drop(split_idx) + self.take(split_idx)
    end

    def my_join(separator = "")
        join = ""
        
        self.length.times do |i|
            join += self[i]
            join += separator if i != self.length - 1
        end
        
        join
    end

    def my_reverse
        reversed = []
        
        self.my_each do |el|
            reversed.unshift(el)
        end
        
        reversed
    end
end

return_value = [1, 2, 3].my_each do |num|
    puts num 
  end.my_each do |num|
    puts num
  end

p return_value  # => [1, 2, 3]

a = [1, 2, 3]
p a.my_select { |num| num > 1 } # => [2, 3]
p a.my_select { |num| num == 4 } # => []

p a.my_reject { |num| num > 1 } # => [1]
p a.my_reject { |num| num == 4 } # => [1, 2, 3]

p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true

p [1, 2, 3, [4, [5, 6]], [[[7]], 8]].my_flatten # => [1, 2, 3, 4, 5, 6, 7, 8]

a = [ 4, 5, 6 ]
b = [ 7, 8, 9 ]
p [1, 2, 3].my_zip(a, b) # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
p a.my_zip([1,2], [8])   # => [[4, 1, 8], [5, 2, nil], [6, nil, nil]]
p [1, 2].my_zip(a, b)    # => [[1, 4, 7], [2, 5, 8]]

c = [10, 11, 12]
d = [13, 14, 15]
p [1, 2].my_zip(a, b, c, d)    # => [[1, 4, 7, 10, 13], [2, 5, 8, 11, 14]]

a = [ "a", "b", "c", "d" ]
p a.my_rotate         #=> ["b", "c", "d", "a"]
p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

a = [ "a", "b", "c", "d" ]
p a.my_join         # => "abcd"
p a.my_join("$")    # => "a$b$c$d"

p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
p [ 1 ].my_reverse               #=> [1]