def most_vowels(sentence)
  vowels = "aeiou"
  hash = Hash.new(0)
  
  sentence.split.each do |word|
    word.each_char do |char|
      if vowels.include?(char)
        hash[word] += 1
      end
    end
  end
  sorted = hash.sort_by { |k,v| v}
  return sorted[-1][0]
end

print most_vowels("what a wonderful life") #=> "wonderful"
