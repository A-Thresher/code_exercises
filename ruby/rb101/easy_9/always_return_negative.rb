=begin

Problem:
  Write a method that given a positive integer returns the negative of that
  integer, and when given 0 or a negative integer returns the original number

  Input: Integer
  Output: Integer

  Rules:
  - Change the sign of positive numbers
  - Return an integer

Examples:
  negative(5) == -5
  negative(-3) == -3
  negative(0) == 0      # There's no such thing as -0 in ruby

Data:
  Integer

Algorithm:
  - check input number sign
  - if positive multiply by -1 and return
  - if negative return

=end

def negative(num)
  num.positive? ? num * -1 : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
