def array_translate(array)
  arr = []
  i = 0
  while i < array.length
    word = array[i]
    num = array[i+1]
    num.times { arr << word}
    
    i += 2
  end
	return arr.join("")
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
