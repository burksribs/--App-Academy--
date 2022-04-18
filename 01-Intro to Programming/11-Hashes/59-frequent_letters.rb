def frequent_letters(string)
  count = Hash.new(0)
  ar = []
  
  string.each_char  { |char| count[char] += 1 }
  
  count.each do |k,v|
    if v > 2
      ar << k
    end
  end
  return ar

end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
