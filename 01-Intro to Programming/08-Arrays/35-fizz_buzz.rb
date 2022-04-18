def fizz_buzz(max)
  i = 4
  arr = []
  while i < max
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      arr << i
    end
    i += 1
  end
    return arr

end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
