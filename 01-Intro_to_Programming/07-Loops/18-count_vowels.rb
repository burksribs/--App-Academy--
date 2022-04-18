def count_vowels(word)
  i = 0
  count = 0
  
  while i < word.length
    v = word[i]
  	if v == "a" || v=="e" || v=="i" || v=="o" || v=="u"
      count +=1
    end
    i+=1
  end
  return count

end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2
