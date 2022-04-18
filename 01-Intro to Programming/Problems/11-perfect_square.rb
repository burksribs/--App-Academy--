def perfect_square?(num)
  (1...num/2).each do |e|
    if e * e == num
      return true
    end
  end
  return false
    

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true
