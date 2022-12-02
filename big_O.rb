def my_min_trash_version(list)

    list.each do |ele1|
        return ele1 if list.all? { |ele2| ele1 <= ele2 }
    end

end

def my_min(list)

    min_var = list[0]

    list.each do |ele1|
        min_var = ele1 if min_var > ele1
    end

    min_var
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
p my_min_trash_version(list)  # =>  -5


# def largest_contiguous_subsum(list)
#     list.each_with_index do |ele1, i|
#         (i...list.length).each do |j|
#             max_sum = list[i...j].sum << list[i..j].sum > max_sum
#         end
#     end
#     sum_sub_arrs.max_by { |arr| arr.sum }.sum
# end

# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

def largest_contiguous_subsum_O_n(list)
    current_sum = list[0]
    max_sum = list[0]

    (1...list.length).each do |i|
        current_sum += list[i]
        if current_sum > max_sum
            max_sum = current_sum
        elsif max_sum < list[i]
            max_sum = list[i]
        elsif current_sum < 0
            current_sum = 0
        end
    end
    return max_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum_O_n(list) # => 8
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_O_n(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum_O_n(list) # => -1 (from [-1])
