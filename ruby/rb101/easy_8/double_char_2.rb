=begin

Problem:
  Double all consonants in a given string.

  Input: string
  Output: string

  Rules:
  - Only double alphabetic consonants, no other characters
  - An empty string returns an empty string

Examples:
  double_consonants('String') == "SSttrrinngg"
  double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
  double_consonants("July 4th") == "JJullyy 4tthh"
  double_consonants('') == ""

Data:
  strings

Algorithm:
  - initialize consonant constant (outside method)
    - create array of full alphabet, remove vowels
  - initialize result string
  - iterate through each character of the string
    - check character against the consonant constant
    - if consonant add to the result string twice, otherwise add once
  - return result string

=end

CONSONANT = (('a'..'z').to_a + ('A'..'Z').to_a).delete_if do |char|
  char =~ /[aeiou]/i
end

def double_consonants(str)
  result_str = ''

  str.each_char do |char|
    CONSONANT.include?(char) ? result_str << char << char : result_str << char
  end

  result_str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
