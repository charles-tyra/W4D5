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

