=begin

Problem:
  Given an integer, return the featured number

  Input: Integer
  Output: Integer

  Rules
    A featured number is:
      - odd
      - a multiple of 7
      - and whose digits occur once each
    Return an error message if there is no next featured number
      - Any number with more than 10 digits will have a repeated digit
      - The last featured number is 9876543201

Examples:
  featured(12) == 21
  featured(20) == 21
  featured(21) == 35
  featured(997) == 1029
  featured(1029) == 1043
  featured(999_999) == 1_023_547
  featured(999_999_987) == 1_023_456_987

  featured(9_999_999_999) # -> There is no possible number
                               that fulfills those requirements

Data:
  Integers

Algorithm:
  - return error message if the input is greater than or equal to the last
    featured number
  - loop
    - add 1 to the input
    - check conditions
    - break if featured
  - return featured value

=end

def featured(number)
  if number >= 9_876_543_201
    return "There is no featured value larger than #{number}."
  end

  loop do
    number += 1
    break if number.odd? &&
             number % 7 == 0
  end

  loop do
    return number if number.digits.reverse.uniq.join('').to_i == number
    number += 14
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number
                        #    that fulfills those requirements
