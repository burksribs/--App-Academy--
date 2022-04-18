# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  sp = str.split("@")
  if sp.length > 2
    return false
  end
  alpha = "abcdefghijklmnopqrstuvwxyz"

  sp[0].each_char do |c|
    if !alpha.include?(c)
      return false
    end
  end
  
  sp2 = sp[1].split(".")
  if sp2.length != 2
    return false
  end
  return true

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
