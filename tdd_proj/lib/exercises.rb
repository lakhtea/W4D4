def my_uniq(arr)
    arr_2 = []
    arr.each { |el| arr_2 << el if !arr_2.include?(el) } 
    arr_2
end

def to_sum(arr)
  result = []
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      result << [i, j] if arr[i]+arr[j] == 0
    end
  end
  result
  
end