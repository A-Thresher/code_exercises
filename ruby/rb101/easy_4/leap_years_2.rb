def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  year % 4 == 0
end

def leap_year2?(year)
  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0
    else
      true
    end
  else
    false
  end
end

puts leap_year2?(2016) == true
puts leap_year2?(2015) == false
puts leap_year2?(2100) == false
puts leap_year2?(2400) == true
puts leap_year2?(240_000) == true
puts leap_year2?(240_001) == false
puts leap_year2?(2000) == true
puts leap_year2?(1900) == false
puts leap_year2?(1752) == true
puts leap_year2?(1700) == false
puts leap_year2?(1) == false
puts leap_year2?(100) == false
puts leap_year2?(400) == true
