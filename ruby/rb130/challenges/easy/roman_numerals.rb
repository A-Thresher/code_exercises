=begin

Problem:
  Convert decimal numbers into their Roman numeral equivalents
  Driven by given test file

  Input: Integer
  Output: String

  Rules:

Examples:
1990 -> MCMXC
2008 -> MMVIII

249 -> [9, 4, 2] -> 2x10^2 = 200 -> CC
                 -> 4x10^1 = 40  -> XL
                 -> 9x10^0 = 9   -> IX

Data:
  Roman Numeral object initialized with a decimal integer, string

Algorithm:
RomanNumeral class
  initialize ROMAN_NUMERALS array of strings: (I, V, X, L, C, D, M)

  o initialize(integer)
    - initialize @decimal_value instance variable as input integer

  o to_roman
    - initialize local variable roman as an empty string
    - iterate through @decimal_value digits with index
      - using a case statement prepend the appropriate roman numeral to the
        roman string

=end


class RomanNumeral
  ROMAN_NUMERALS = %w(I V X L C D M)

  def initialize(decimal)
    @decimal_value = decimal
  end

  def to_roman
    roman = ''

    @decimal_value.digits.each_with_index do |digit, index|
      roman_index = index * 2

      roman_numeral = case digit
      when 1..3
        ROMAN_NUMERALS[roman_index] * digit
      when 4
        ROMAN_NUMERALS[roman_index] + ROMAN_NUMERALS[roman_index + 1]
      when 5
        ROMAN_NUMERALS[roman_index + 1]
      when 6..8
        ROMAN_NUMERALS[roman_index + 1] +
          (ROMAN_NUMERALS[roman_index] * (digit - 5))
      when 9
        ROMAN_NUMERALS[roman_index] + ROMAN_NUMERALS[roman_index + 2]
      else
        next
      end

      roman.prepend(roman_numeral)
    end

    roman
  end
end
