def merge_sort(array)
    return [] if array.empty?
    return array if array.length==1

    mid = (array.length/2).floor()
    left_a = array[0...mid]
    right_a = array[mid..-1]
    arr = [left_a, right_a]

    temp = []
    arr.each do |sub_array|
        puts "looping"
        temp << merge_sort(sub_array)
    end
    temp = temp.flatten
    master = []
    temp.each_with_index do |el, i|
        tempo = []
        if i.even?
            if el < temp[i+1]
                tempo << el
                tempo << temp[i+1]
            else
                tempo << temp[i+1]
                tempo << el
            end
            master << tempo
        elsif i == arr.length-1
            tempo << temp[i]
        end
    end

    puts "master: #{master.flatten} "

end

merge_sort([2,1,4,3])
