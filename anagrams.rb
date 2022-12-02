def first_anagram?(string, ana)
    anags = permutations(string.split(""))
    anags.include?(ana)
end

def permutations(string)
    return [string] if string.length == 1 # this makes sense

    first = string.shift # shifts the first element off of the array

    perms = permutations(string) # passes the array with the first element slided off back into permutations

    # after permutations reaches base case, we are able to continue with the code using first and perms containing separate elements

    total_perms = [] # establish the array you shovel your re-organized elements into


    # iterate through perms, and then also through the collection of sliced elements (stored in perms)
    # the below iteration only happens if string.lenght is 2 or greater, otherwise it is caught by the base case.
    perms.each do |perm|
        (0..perm.length).each do |i|
            # new_arr is the combination of the permutated elements with "first" moved into the middle, to 'reorganize' the elements
            new_arr = [perm[0...i]] + [first] + [perm[i..-1]]

            # easiest part, add a joined version of the new_arr to total perms so we are returning an array of strings by the end.
            total_perms << new_arr.join("")
        end
    end

    total_perms
end

p first_anagram?("chad", "acdh")