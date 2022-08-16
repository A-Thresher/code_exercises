=begin

Problem:
  Write a method that takes a string and returns true if all alphabetic
  characters are uppercase, false otherwise.

  Input: String
  Output: Boolean

  Rules:
    - ignore none alphabetic characters

Examples:
  uppercase?('t') == false
  uppercase?('T') == true
  uppercase?('Four Score') == false
  uppercase?('FOUR SCORE') == true
  uppercase?('4SCORE!') == true
  uppercase?('') == true

Data:
  String, Boolean

Algorithm:
  - compare input string with upcased string using equivalence, return result

=end

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
