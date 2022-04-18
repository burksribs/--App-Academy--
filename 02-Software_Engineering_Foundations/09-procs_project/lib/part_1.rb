def my_map(array, &prc)
    arr = []
    array.each do |e|
       arr << prc.call(e)
    end
    arr
end

def my_select(array, &prc)
    arr = []
    array.each do |e|
        arr << e if prc.call(e)
    end
    arr
end

def my_count(array, &prc)
    count = 0
    array.select do |e|
        count += 1 if prc.call(e)
    end
    count
end

def my_any?(array, &prc)
    array.each { |e| return true if prc.call(e)}
    false
end

def my_all?(array, &prc)
    array.each { |e| return false if !prc.call(e) }
    true
end

def my_none?(array, &prc)
    array.each do |el|
        return false if prc.call(el)
    end
    true
end