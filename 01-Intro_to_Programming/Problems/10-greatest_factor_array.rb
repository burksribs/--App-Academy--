def greatest_factor_array(arr)
new_arr = arr.map do |num|
    if num % 2 == 0
      num/2
    else
      num
    end
  end

  return new_arr
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
