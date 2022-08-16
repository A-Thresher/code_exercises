def staggered_case(str)
  stag_str = ''

  str.chars.each_with_index do |char, index|
    index.even? ? stag_str << char.upcase : stag_str << char.downcase
  end

  stag_str
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
