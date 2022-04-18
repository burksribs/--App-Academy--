# Hint: all keys of a hash are automatically unique

def unique_elements(arr)
  hash_elements = {}
  arr.each { |ele| hash_elements[ele] = true }
  return hash_elements.values

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
