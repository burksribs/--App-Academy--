def factorial(num)
  fac = 1
  i = 1
  while i <= num
    fac *= i
    i +=1
  end
  return fac

end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
