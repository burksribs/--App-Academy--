def all_else_equal(arr)
  sum = 0
  arr.each { |e| sum += e }
  half = sum / 2.0
  arr.each do |e|
    if e == half
      return e
    end
  end
  return nil

end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array
