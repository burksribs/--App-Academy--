# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  sp = str.split(" ")
  
  if sp.length < 2
    return false
  end
  
  sp.each do |e|
  	if !(e[0] == e[0].upcase && e[1..-1] == e[1..-1].downcase)
      return false
    end
  end
  
return true
end
    
    


puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
