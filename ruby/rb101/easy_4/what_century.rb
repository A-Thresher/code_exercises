def century(year)
  if (year % 100).zero?
    century = ((year / 100)).to_s
  else
    century = ((year / 100) + 1).to_s
  end

  century + suffix(century)
end

def suffix(number)
  case
  when number.end_with?('1') && !number.end_with?('11') then 'st'
  when number.end_with?('2') && !number.end_with?('12') then 'nd'
  when number.end_with?('3') && !number.end_with?('13') then 'rd'
  else                                                       'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10_103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11_201) == '113th'
