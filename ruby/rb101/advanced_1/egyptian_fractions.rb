=begin

Problem:
  Given a rational number return an array of denominators of an Egyptian
  Fraction representation of that number. Given an array of denominators of an
  Egyptian Fraction return the resulting rational number.

  Input: Rational number - Array
  Output: Array - Rational number

  Rules:
    A Rational Number is any number that can be represented as the result of the
      division between two integers, e.g., 1/3, 3/2, 22/7, etc. The number to
      the left is called the numerator, and the number to the right is called
      the denominator.
    A Unit Fraction is a rational number where the numerator is 1.
    An Egyptian Fraction is the sum of a series of distinct unit fractions (no
      two are the same), such as:

Examples:
  egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
  egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
  egyptian(Rational(3, 1))  # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

  unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
  unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
  unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
  unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
  unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
  unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
  unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
  unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

Data:
  Rational numbers, integers, arrays

Algorithm:
  Rational -> Egyptian (Greedy)
    - initialize denominator variable as 1
    - initialize denominator array as empty array
    - loop
      - if result of subtracting 1/denominator from input rational is >= 0
        - push denominator to array
        - subtract 1/denominator from input rational
      - add 1 to denominator
      - break if input rational is 0
    - return array

  Egyptian -> Rational
    - iterate through the array
      - sum 1/element
    - return sum

=end

def egyptian(rational_num)
  denominator = 1
  denom_array = []

  loop do
    if (rational_num - Rational(1, denominator)) >= 0
      denom_array << denominator
      rational_num -= Rational(1, denominator)
    end

    denominator += 1

    break if rational_num == 0
  end

  denom_array
end

def unegyptian(array)
  array.sum { |num| Rational(1,num) }
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))  # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
