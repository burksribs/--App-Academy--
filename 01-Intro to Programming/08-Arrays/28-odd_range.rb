def odd_range(min, max)
	arr = []
  while min <= max
    if min % 2 != 0
      arr << min
    end
    min += 1
  end
  return arr
end

print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
