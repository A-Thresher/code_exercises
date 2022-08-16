def swapcase(str)
  swap_str = ''

  str.each_char do |char|
    if ('a'..'z').include?(char)
      swap_str << char.upcase
    elsif ('A'..'Z').include?(char)
      swap_str << char.downcase
    else
      swap_str << char
    end
  end

  swap_str
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
