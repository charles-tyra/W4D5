#the bad two sum method has a time complexity of O(n^2), the exponential one.

def bad_two_sum?(arr, target)

    arr.each.with_index do |num, idx1|
        arr[idx1+1..-1].each do |num2|
            return true if num + num2 == target
        end
    end

    false
end


# okay_two_sum? is an O(nlogn) solution, because .sort is inherently a nlogn
# as long as we use a method to find the pair that is less complex than that, we get nlogn
def okay_two_sum?(arr, target)
    arr.sort!
    # p arr
    start = 0
    last = arr.length - 1

    while start != last
        poss_targ = arr[start] + arr[last]
        if poss_targ < target
            start += 1
        elsif poss_targ > target
            last -= 1
        else
            return true
        end
    end
    false
end


p okay_two_sum?([-2, -1, 7, 0 ,4], 1) # false
p okay_two_sum?([-2, -1, 7, 0 ,4], 6) # true


#this may be linear, but also may be quadratic/polynomial (n^2), unsure
def two_sum?(arr, target)
    arr.each do |num|
        return true if arr.include?(target-num)
    end
    false
end


def linear_two_sum?(arr, target)
    hash = Hash.new(0)

    arr.each do |num|
        hash[target-num] = num
        return true if hash.has_key?(num)
    end

    false
end