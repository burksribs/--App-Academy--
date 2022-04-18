def to_initials(name)
  str = ""
  arr = name.split(" ")
  arr.each { |e| str = str + e[0]}
  return str

end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
