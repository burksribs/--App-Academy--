def is_prime?(num)
    return false if num < 2 
    (2...num).none? { |i| num % i == 0}
end

def nth_prime(n)
    count = 0

    num = 1
    while count < n
        num += 1
        count += 1 if is_prime?(num)
    end

    num
end

def prime_range(min,max)
    arr = []
    (min..max).each {|e| arr << e if is_prime?(e)}
    arr
end

