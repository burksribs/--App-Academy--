def first_half(array)
	arr = []
  i = 0
  while i < array.length / 2.0
    	arr << array[i]
    i += 1
  end
  return arr
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
