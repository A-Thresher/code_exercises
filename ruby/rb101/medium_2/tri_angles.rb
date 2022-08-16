=begin

Problem:
  Write a method that takes the 3 angles of triangle as arguments and retuns a
  symbol `:right`, `:acute`, `:obtuse`, or ':invalid'

  Inputs: Integers
  Output: Symbol

  Rules:
  - right One angle of the triangle is a right angle (90 degrees)
  - acute All 3 angles of the triangle are less than 90 degrees
  - obtuse One angle is greater than 90 degrees.
  - the sum of the angles must be 180
  - all angles must be greater than zero

Examples:
  triangle(60, 70, 50) == :acute
  triangle(30, 90, 60) == :right
  triangle(120, 50, 10) == :obtuse
  triangle(0, 90, 90) == :invalid
  triangle(50, 50, 50) == :invalid

Data:
  integers, symbols, array

Algorithm:
  - initialize an array of angle values
  - Check for zero and sum of 180, return :invalid if fail
  - Check for 90, :right if exists
  - Check for all less than 90, :acute if exists
  - :obtuse otherwise

=end

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.sum != 180 || angles.include?(0)
  case
  when angles.include?(90)            then :right
  when angles.all? { |num| num < 90 } then :acute
  else                                     :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
