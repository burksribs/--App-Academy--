def whisper_words(words)
  return words.map { |e| e.downcase + "..." }

end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts
