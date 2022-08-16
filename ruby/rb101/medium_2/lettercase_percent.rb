=begin

Problem:
  Write a method that when given a string argument returns a hash with the
  percentage of lowercase, uppercase, and neither characters in the string.

  Input: string
  Output: Hash

  Rules:
  - all input strings will have at least 1 character
  - whitespace is an neither character

Examples:
  letter_percentages('abCdef 123')
    == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
  letter_percentages('AbCd +Ef')
    == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
  letter_percentages('123')
    == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Data:
  strings, hash, floats, integers

Algorithm:
  - record string length
  - initialize character counting hash
  - iterate through the input string, adding 1 to the appropriate hash value
  - transform the character count into a percentage using string length

=end

def letter_percentages(string)
  length = string.length.to_f
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }

  string.each_char do |char|
    case char
    when /[a-z]/ then percentages[:lowercase] += 1
    when /[A-Z]/ then percentages[:uppercase] += 1
    else              percentages[:neither] += 1
    end
  end

  percentages.transform_values { |value| ((value/length) * 100).round(1) }
end

p letter_percentages('abCdef 123') ==
  { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') ==
  { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') ==
  { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI') ==
  {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}
