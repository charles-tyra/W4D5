def first_anagram?(string, ana)
    anags = permutations(string.split(""))
    anags.include?(ana)
end

def permutations(string)
    return [string] if string.length == 1

    first = string.shift

    perms = permutations(string)

    total_perms = []

    perms.each do |perm|
        (0..perm.length).each do |i|
            new_str = [perm[0...i]] + [first] + [perm[i..-1]]
            total_perms << new_str.join("")
        end
    end

    total_perms
end

p first_anagram?("chad", "acdh")