INTEGER_STRING = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  chars = integer.digits.reverse.map { |digit| INTEGER_STRING[digit] }
  string = ''
  chars.each { |char| string << char }
  string
end

def signed_integer_to_string(integer)
  trimmed_string = integer_to_string(integer.abs)
  if integer.positive?
    trimmed_string.prepend('+')
  elsif integer.negative?
    trimmed_string.prepend('-')
  else
    trimmed_string
  end
end

def signed_integer_to_string2(integer)
  trimmed_string = integer_to_string(integer.abs)
  case integer <=> 0
  when 1  then trimmed_string.prepend('+')
  when -1 then trimmed_string.prepend('-')
  else         trimmed_string
  end
end

puts signed_integer_to_string2(4321) == '+4321'
puts signed_integer_to_string2(-123) == '-123'
puts signed_integer_to_string2(0) == '0'
