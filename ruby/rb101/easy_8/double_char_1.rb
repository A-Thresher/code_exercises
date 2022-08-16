=begin

Problem:
  Double every character in a given string

  Input: string
  Output: string

  Rules:
    - All characters doubled
    - Empty strings return an empty string

Examples:
  repeater('Hello') == "HHeelllloo"
  repeater("Good job!") == "GGoooodd  jjoobb!!"
  repeater('') == ''

Data:
  strings

Algorithm:
  - create result string
  - iterate through each character of the argument string
    - push each character to the result string twice
  - return the result string

=end

def repeater(str)
  result_str = ''

  str.each_char do |char|
    result_str << char << char
  end

  result_str
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
