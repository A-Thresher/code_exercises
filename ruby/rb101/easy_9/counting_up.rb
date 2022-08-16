=begin

Problem:
  Write a method that takes an integer argument and returns an array of all
  integers, in sequence, between 1 and the argument.

  Input: Integer
  Output: Array

  Rules:
    - argument is always a valid integer greater than 0

Examples:
  sequence(5) == [1, 2, 3, 4, 5]
  sequence(3) == [1, 2, 3]
  sequence(1) == [1]

Data:
  Integer, Array

Algorithm:
  - initialize return array
  - count from 1 upto the argument, pushing each integer to the return array
  - return the array

=end

def sequence(num)
  num.positive? ? (1..num).to_a : (num..-1).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1]
p sequence(-3) == [-3, -2, -1]
p sequence(-1) == [-1]
