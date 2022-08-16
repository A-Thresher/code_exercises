=begin

3:15 - 3:26

Problem:
  Given an array of letters in alphabetical order find the missing letter

  Input: Array
  Output: string

  Rules:
    Array length with always be at least 2
    missing letter will always be bracketed by two characters
    only one case per array

Examples
  ['a','b','c','d','f'] -> 'e'
  ['O','Q','R','S'] -> 'P'

Data:
  Array, strings, integer

Algorithm:
  - iterate through the array 2 elements at a time
    - find the difference between the two element's ordinates
      - if difference is 2, return the character with the first element's ordinate + 1

=end

def find_missing_letter(array)
  array.map(&:ord).each_cons(2) do |char1, char2|
    return (char1 + 1).chr if char2 - char1 == 2
  end
end

p find_missing_letter(['a','b','c','d','f']) == 'e'
