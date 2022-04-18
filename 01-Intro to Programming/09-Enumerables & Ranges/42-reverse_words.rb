def reverse_words(sent)
  part = sent.split(" ")
  newArr = []
  part.each do |e|
    newArr << e.reverse
  end
  
  return newArr.join(" ")
	
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
