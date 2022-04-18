def combinations(arr)
  newArr = []
  arr.each_with_index do |e, i|
    arr.each_with_index do |e2, j|
      if i < j
        newArr << [e,e2]
      end
    end
  end
  return newArr

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
