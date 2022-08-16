def staggered_case(str, start=0, include=true)
  stag_str = ''

  start == 0 ? mark = true : mark = false

  if include
    str.chars.each do |char|
        mark ? stag_str << char.upcase : stag_str << char.downcase
        mark = !mark
    end
  else
    str.chars.each do |char|
      if char =~ /[^a-zA-z]/
        stag_str << char
        next
      end

      if mark
        stag_str << char.upcase
      else
        stag_str << char.downcase
      end

      mark = !mark
    end
  end

  stag_str
end

p staggered_case('I Love Launch School!', 0, false) \
                == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', 0, false) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', 0, false) \
                == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!', 1) == "i lOvE LaUnCh sChOoL!"
p staggered_case('ALL_CAPS', 1) == "aLl_cApS"
p staggered_case('ignore 77 the 444 numbers', 1) == "iGnOrE 77 tHe 444 nUmBeRs"
