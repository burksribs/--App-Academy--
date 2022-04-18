def yell(words)
  i = 0
  newarr = []
  while i < words.length
    newarr << words[i] + "!"
    i += 1
  end
  return newarr

end

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
