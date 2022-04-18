def sum_elements(arr1, arr2)
  	arr = []
	i = 0
  while i < arr1.length
    arr << arr1[i] + arr2[i]
    i += 1
  end
  return arr
end

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]
