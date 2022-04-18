# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(str)
  sp = str.split(" ")
  nw = []
  sp.each do |e|
    nw << e[0].upcase + e[1..-1].downcase
  end
  return nw.join(" ")

end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
