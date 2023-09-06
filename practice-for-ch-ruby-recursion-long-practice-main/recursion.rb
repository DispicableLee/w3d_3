def it_range(start_, end_)
    arr = []
    (start_...end_-1).each {|i| arr<< i}
    arr
end






def range(start_, end_)
    return [] if end_ < start_
    return [start_] if start_ == end_ || end_ == start_ + 1

    [start_] + range(start_+1, end_)
end

def exponentiation_vers_1(b, n)
    return 1 if n == 0
    b * exponentiation_vers_1(b, n-1)
end


# def exponentiation_vers_2(a, b)
#     return 1 if b == 0
#     return a if b == 1
#     b.times do
#         return a*exponentiation_vers_2(a, b-1)
#     end
# end

# def exp

def deep_dup(array)
    temp = []
    return array if array.empty?
    array.each do |sub_element|
        if sub_element.is_a?(Array)
            temp << deep_dup(sub_array)
        else
            temp << sub_element
        end
    end
    return temp

end


def it_fib(n)
    fibo = [0,1,1]
    return fibo[n-1] if n <=3
    n.times do
        fibo << fibo[-1] + fibo[-2]
    end
    fibo[n-1]
end

def rec_fib(n)
    return 0 if n ==1
    return 1 if n == 2 || n == 3
    rec_fib(n-1) + rec_fib(n-2)
end

def bsearch(array, target)
    return nil if array.empty?
    if array.length == 1
        return 1 if array[0] == target
        return nil if array[0] != target
    end
    mid = (array.length/2).floor()
    # p mid
    if target == array[mid]
        return mid
    elsif target > array[mid]
        res = bsearch(array[mid+1..-1], target)
        return res + 1 + mid
    elsif target < array[mid]
        res = bsearch(array[0..mid-1], target)
        return res + mid
    end
end

# p (3/2.floor())
# p bsearch([1,2,3,4,5,6,7], 7)

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
