=begin

Problem:
  Write a method that rotates an array by moving the first element to the end.

  Input: Array
  Output: Array

  Rules:
  - Do not modify the original array

Examples:
  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  rotate_array(['a']) == ['a']

  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]                 # => true

Data:
  Array

Algorithm:
  - initialize a return array variable
  - assign the return array to the 2nd - last element of the argument array
  - push the first element of the argument array to the return array
  - return the return array

=end

def rotate_array(arr)
  return_array = arr[1..-1] << arr[0]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_string('test string')
p rotate_string('a')
p rotate_integer(123456)
p rotate_integer(1)
