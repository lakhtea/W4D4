def my_uniq(arr)
    arr_2 = []
    arr.each { |el| arr_2 << el if !arr_2.include?(el) } 
    arr_2
end

def 