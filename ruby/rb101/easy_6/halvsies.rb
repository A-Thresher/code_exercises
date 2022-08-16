def halvsies(array)
  return_array = [[], []]
  middle = (array.size / 2.0).ceil
  array.each_with_index do |value, i|
    i < middle ? return_array[0] << value : return_array[1] << value
  end
  return_array
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
