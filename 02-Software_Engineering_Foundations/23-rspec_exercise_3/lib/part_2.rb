def element_count(array)
    hash = Hash.new(0)
    array.each {|e| hash[e] += 1}
    hash
end

def char_replace!(string, hash)
    (0...string.length).each do |i|
        if hash.has_key?(string[i])
          string[i] = hash[string[i]]
        end
    end
    
    string
end

def product_inject(nums)
    nums.inject {|prd, e| prd * e }
end