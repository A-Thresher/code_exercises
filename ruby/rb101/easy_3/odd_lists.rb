def oddities(array)
  odd_values = []
  array.size.times { |index| odd_values << array[index] if index.even? }
  odd_values
end

def evens(array)
  even_values = []
  array.size.times { |index| even_values << array[index] if index.odd? }
  even_values
end

def oddities2(array)
  odd_values = []
  index = 0
  while index < array.size
    odd_values << array[index]
    index += 2
  end
  odd_values
end

def oddities3(array)
  array.select! { |value| array.index(value).even? }
  array
end

puts oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities3(['abc', 'def']) == ['abc']
puts oddities3([123]) == [123]
puts oddities3([]) == []
puts evens([2, 3, 4, 5, 6]) == [3, 5]
puts evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
puts evens(['abc', 'def']) == ['def']
puts evens([123]) == []
puts evens([]) == []
