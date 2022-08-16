def interleave(arr1, arr2)
  arr1.each_with_object([]) do |value, out_arr|
    out_arr << value << arr2[arr1.index(value)]
  end
end

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
