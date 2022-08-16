def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

def running_total2(array)
  array.each_with_object([]) do |i, a|
    if a == []
      a << i
    else
      a << i + a[-1]
    end
  end
end

puts running_total2([2, 5, 13]) == [2, 7, 20]
puts running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total2([3]) == [3]
puts running_total2([]) == []
