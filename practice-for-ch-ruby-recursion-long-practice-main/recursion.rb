def it_range(start_, end_)
    arr = []
    (start_...end_-1).each {|i| arr<< i}
    arr
end






def range(start_, end_)
    return [] if end_ < start_
    return [start_] if start_ == end_ || end_ == start_ + 1
    [1,2]
     new_array = []
     new_array +[]
end

range(1,1) => [1]
range(1,2) => [1]
range(1,3) => range(2,3)
    => [1,2]