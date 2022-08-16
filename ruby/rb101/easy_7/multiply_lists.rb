def multiply_list(arr1, arr2)
  results = []
  arr1.each_with_index { |value, index| results << value * arr2[index] }
  results
end

def multiply_list2(arr1, arr2)
  arr1.zip(arr2).map { |multiple| multiple[0] * multiple[1] }
end

p multiply_list2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
