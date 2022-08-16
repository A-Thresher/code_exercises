def reverse(array)
  return_array = []
  array.size.times { |i| return_array << array[-i - 1] }

  return_array
end

def reverse2(array)
  (1..array.size).inject([]) { |return_array, i| return_array << array [-i] }
end

puts reverse2([1, 2, 3, 4]) == [4, 3, 2, 1]    # => true
puts reverse2(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse2(['abc']) == ['abc']              # => true
puts reverse2([]) == []                        # => true

list = [1, 3, 2]                           # => [1, 3, 2]
new_list = reverse2(list)                  # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
