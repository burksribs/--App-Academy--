def my_reject(array,&prc)
    array.select {|e| e if !prc.call(e)}
end

def my_one?(array, &prc)
    array.count(&prc) == 1
end

def hash_select(hash, &prc)
    hass = {}
    hash.each {|k,v| hass[k] = v if prc.call(k,v)}
    hass
end

def xor_select(array, prc_1, prc_2)
    array.select do |e| 
        (prc_1.call(e) || prc_2.call(e)) && !(prc_1.call(e) && prc_2.call(e))
    end
end

def proc_count(val, prcs)
    count = 0
    prcs.each { |p| count += 1 if p.call(val)}
    count
end