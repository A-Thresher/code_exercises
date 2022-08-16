=begin

Problem:
  Create a class that given a whole number or a string can return the
  appropriate roman numeral or whole number.

  Input: integer or string
  Output: string or integer

  Rules:
    4 -> IV
    9 -> IX
    90 -> XC
    etc

Algorithm
  - create roman numeral array constant

  - integer to roman numeral
    - separate integer into digits
    - iterate through digits with index
      - transform each digit into the appropriate collection of roman characters
        - initialize current letters as a slice of roman numeral from the
          current digit index 3 elements long
        - if the current digit is 0
          go to next
        - if the current digit is 1 - 3
          return digit times the current lower letter
        - if the current digit is 6 - 8
          return the higher letter plus current digit - 5 times the lower letter
        - if the current digit is 4 or 9
          return the lower letter plus the letter 2 steps higher
        - if the current digit is 5
          - return the higher letter
    - reverse the transformed digits array, join, and return

  - roman numeral to integer
    - create constant array with roman associated numbers
    - split roman numeral into distinct numbers
      - initialize empty array as roman numerals array
      - split string into characters and reverse  (MCMXCIV -> VICXMCM)
      - iterate through characters
        - if the current character is numerically larger than the next
          character, push both as a single string to the array and skip the
          next character (remove from iterator)
        - else push the current character to the array
    - iterate through the roman numerals array
      - sum the associated numbers
        - if single character
          - use same integer at same index between roman constant and number
            constant
        - if two characters
          - subtract integer of first character from integer of second character
    - return sum

=end


class RomanNumerals
  ROMAN_NUMERALS = %w(I V X L C D M)
  ASSOC_NUMBERS  = [1, 5, 10, 50, 100, 500, 1000]

  def self.to_roman(number)
    digits = number.digits
    numeral_index = 0

    digits.map do |digit|
      current_roman = ROMAN_NUMERALS.slice(numeral_index, 3)
      numeral_index += 2

      case digit
      when 0    then next
      when 1..3 then current_roman[0] * digit
      when 6..8 then current_roman[1] +
                       (current_roman[0] * (digit-5))
      when 4    then current_roman[0] + current_roman[1]
      when 9    then current_roman[0] + current_roman[2]
      when 5    then current_roman[1]
      end
    end.reverse.join
  end

  def self.from_roman(string)
    string_arr = string.chars.reverse
    numerals = []

    until string_arr.empty?
      if string_arr.length > 1 &&
           (ROMAN_NUMERALS.index(string_arr[0]) >
           ROMAN_NUMERALS.index(string_arr[1]))
        numerals << string_arr.shift(2).reverse.join
      else
        numerals << string_arr.shift
      end
    end

    numerals.sum do |numeral|
      if numeral.length == 1
        ASSOC_NUMBERS[ROMAN_NUMERALS.index(numeral)]
      else
        ASSOC_NUMBERS[ROMAN_NUMERALS.index(numeral[1])] -
        ASSOC_NUMBERS[ROMAN_NUMERALS.index(numeral[0])]
      end
    end
  end

  private


end


p RomanNumerals.from_roman('MCMXCIV')
