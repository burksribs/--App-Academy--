def zip(*arrays)
    length = arrays.first.length

    (0...length).map do |i|
        arrays.map { |arr| arr[i] }
    end
end

def prizz_proc(array, prc_1, prc_2)
    array.select {|e| (prc_1.call(e) && !prc_2.call(e)) || (!prc_1.call(e) && prc_2.call(e)) }
end

def zany_zip(*arrays)
    length = arrays.map(&:length).max

    (0...length).map do |i|
        arrays.map { |arr| arr[i] }
    end
end

def maximum(array, &prc)
    return nil if array.empty?
    max = array.first
    array.each do |e|
        max = e if prc.call(e) >= prc.call(max)
    end
    max
end

def my_group_by(array, &prc)
    hash = Hash.new { |h,k| h[k] = [] }

    array.each do |e|
        hash[prc.call(e)] << e
    end
    hash
end

def max_tie_breaker(array, prc_1, &prc)
    return nil if array.empty?
    max = array.first
    array.each do |e|
        if prc.call(e) > prc.call(max)
            max = e
        elsif prc.call(e) == prc.call(max) && prc_1.call(e) > prc_1.call(max)
            max = e
        end
    end
    max
end

def new_word(word)
    arr = []
    word.each_char.with_index {|c,i| arr << i if "aeiou".include?(c)}
    str = word[arr.first..arr.last]
    str
end


def silly_syllables(sentence)
    words = sentence.split(" ")
    sent = words.map do |w|
        nw = new_word(w)
        if nw.length > 2
            nw
        else
            w
        end
    end
    sent.join(" ")
end