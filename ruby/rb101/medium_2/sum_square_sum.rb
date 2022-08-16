=begin

Problem:
  Given an integer n compute the difference between the square of the sum and
  the sum of the squares of the first n integers

  Input: Integer
  Output: Integer

  Rules:
    Positive integers only

Examples:
  sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
  sum_square_difference(10) == 2640
  sum_square_difference(1) == 0
  sum_square_difference(100) == 25164150

Data:
  Integer

Algorithm
  - Calculate square of sum
    - 1 up to input, inject #+, then square
  - Calculate sum of squares
    - 1 up to input, inject #+ squared number
  - Calculate and return difference

=end

def sum_square_difference(number)
  square_sum = ((1.upto(number).inject(&:+)) ** 2)
  sum_square = 1.upto(number).inject(0) { |sum, num| sum += num ** 2 }
  square_sum - sum_square
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
