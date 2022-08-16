=begin

3:44 - 4:03

Problem:
  Given two integers, remove the second inputs number of digits from the first such that the lowest possible number remains.

  Input: 2 Integers
  Output: String

  Rules:
    don't change digit order
    return as a string (including leading zeros)

Examples:
  123056, 1 -> 12056
  1284569, 3 -> 1245

Data:
  integers, strings, array

Algorithm:
  x remove the first number followed by a lower digit reading left to right, once in order remove the last digit
    or
  o find all ordered combinations of digits of input 1 length - input 2, output minimum

  - split input number into array of digits (in reading order)
  - find all sub groups of digits that are input number length minus input digits that maintain order
    - combination
  - join digit subgroups
  - find and return minimum
    - min_by string to integer

=end

def solve(number, rem_digit)
  digits = number.digits.reverse
  digits.combination(digits.size - rem_digit).map(&:join).min_by(&:to_i)
end

p solve(123056,1) == '12056'
p solve(123056,2) == '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'
