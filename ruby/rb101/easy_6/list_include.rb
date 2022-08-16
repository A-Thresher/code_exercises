def include?(array, value)
  while array.size > 0
    checknum = array.pop
    return true if checknum == value
  end
  false
end

def include2?(array, value)
  !!array.index(value)
end

puts include2?([1, 2, 3, 4, 5], 3) == true
puts include2?([1, 2, 3, 4, 5], 6) == false
puts include2?([], 3) == false
puts include2?([nil], nil) == true
puts include2?([], nil) == false
