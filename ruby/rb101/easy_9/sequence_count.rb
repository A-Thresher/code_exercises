=begin

Problem:
  Create a method that takes 2 integers as arguments. The first is a count and
  the second is the first number of the output sequence. Return an array that
  contains 'count' number of elements, the elements are multiples of the output
  sequence.

  Input: Integers
  Output: Array

  Rules:
    - count will always be zero or greater
    - starting number can be any integer value
    - if count is 0 return an empty array

Examples:
  sequence(5, 1) == [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []

Data:
  Integer, Array

Algorithm:
  - create an array with 'count' elements going from 1 to count.
  - multiply each element by the output number
  - return array

=end

def sequence(count, multiple)
  (1..count).to_a.map { |count| count * multiple }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
