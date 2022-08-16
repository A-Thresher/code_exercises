=begin

Problem:
  Write a method that displays a 4 pointed diamond in an n x n grid where n is
  an odd integer

  Input: Integer
  Output: Printed diamond of asterisks

  Rules:
  - n will always be an odd integer

Examples:
  diamond(1)

  *

  diamond(3)

   *
  ***
   *

  diamond(9)

      *
     ***
    *****
   *******
  *********
   *******
    *****
     ***
      *

Data:
  Integer, string

Algorithm:
  - generate an array of odd numbers up to the input integer
  - combine the array with a reversed version of itself (less the repeated input
    integer)
  - iterate through the array, printing * times the array value on each line

=end

def diamond(num)
  grid_num = (1..num).to_a.select(&:odd?)
  grid_num = grid_num[0..-2] + grid_num.reverse
  grid_num.each { |value| puts ('*' * value).center(num) }
end

def hollow_diamond(num)
  grid_num = (1..num).to_a.select(&:odd?)
  grid_num = grid_num[0..-2] + grid_num.reverse
  grid_num.each do |value|
    if value > 1
      puts ('*' + (' ' * (value - 2)) + '*').center(num)
    else
      puts '*'.center(num)
    end
  end
end

diamond(1)
diamond(3)
diamond(9)

hollow_diamond(1)
hollow_diamond(3)
hollow_diamond(9)
