STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

HEX_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def string_to_integer(string)
  numbers = []
  string.each_char { |char| numbers << STRING_INTEGER[char] }

  i = 0
  number = 0
  while !numbers.empty?
    number += (numbers.pop * 10**i)
    i += 1
  end
  number
end

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |char| HEX_INTEGER[char] }

  number = 0
  digits.each { |digit| number = (number * 16) + digit }
  number
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('4D9f') == 19871
