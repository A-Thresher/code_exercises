def merge(arr1, arr2)
  arr1.union(arr2)
end

def merge2(arr1, arr2)
  while arr2.size > 0
    arr1.include?(arr2[0]) ? arr2.shift : arr1 << arr2.shift
  end
  arr1
end

def merge3(arr1, arr2)
  arr1 | arr2
end

puts merge3([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
