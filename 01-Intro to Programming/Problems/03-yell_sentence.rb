def yell_sentence(sent)
	words = sent.split(" ")
  	s = words.map {|w| w.upcase + "!" }
  return s.join(" ")

end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"
