STRING_INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| STRING_INTEGER[char] }

  number = 0
  digits.each { |digit| number = number * 10 + digit }
  number
end

def string_to_signed_integer(string)
  if string[0] == '-'
    - string_to_integer(string.delete("^0-9"))
  else
    string_to_integer(string.delete("^0-9"))
  end
end

def string_to_signed_integer2(string)
  trimmed_string = string_to_integer(string.delete("^0-9"))
  string[0] == '-' ? -trimmed_string : trimmed_string
end

puts string_to_signed_integer2('4321') == 4321
puts string_to_signed_integer2('-570') == -570
puts string_to_signed_integer2('+100') == 100
