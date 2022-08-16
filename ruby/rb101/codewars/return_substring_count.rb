=begin

https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby

Complete the solution so that it returns the number of times the search_text is
found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

=end

=begin

Problem:
  Write a method that takes two strings as arguments, the first string should be
  checked for instances of the second string, the number of instances returned

  Input: Strings
  Output: Integer

  Rules

Data:
  string, array, integer

Algorithm:
  - scan string for matching pattern
  - return scanned array length

=end

def solution(full_text, search_text)
  full_text.scan(search_text).size
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1
