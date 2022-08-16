=begin

Problem:
  Write a method that takes the lengths of the 3 sides of a triangle as
  arguments and returns a symbol `:equilateral`, `:isosceles`, `:scalen`,
  or `:invalid`.

  Input: Integers
  Output: Symbol

  Rules:
  - equilateral All 3 sides are of equal length
  - isosceles 2 sides are of equal length, while the 3rd is different
  - scalene All 3 sides are of different length
  - The sum of the lengths of the two shortest sides must be greater than the
    length of the longest side
  - All sides must have lengths greater than 0

Examples:
  triangle(3, 3, 3) == :equilateral
  triangle(3, 3, 1.5) == :isosceles
  triangle(3, 4, 5) == :scalene
  triangle(0, 3, 3) == :invalid
  triangle(3, 1, 1) == :invalid

Data:
  Integers, symbols, array

Algorithm:
  - initialize array with sorted arguments
  - Check arguments for no zeros, if zero is found return :invalid
  - Check the sum of the two smaller values larger than the largest value
  - Check uniq of numbers in array, 1 is equilateral, 2 is isosceles, 3 is
    scalene

=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  return :invalid if sides.include?(0) || sides[0] + sides[1] <= sides[2]

  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  when 3 then :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
