def even_nums(max)
	arr = []
  	i = 0
  	while i <= max
      arr << i
      i += 2
    end
  return arr
      
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
