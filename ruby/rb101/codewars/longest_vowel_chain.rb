=begin

(https://www.codewars.com/kata/59c5f4e9d751df43cf000035/train/ruby)

The vowel substrings in the word codewarriors are o,e,a,io. The longest of these
has a length of 2. Given a lowercase string that has alphabetic characters only
(both vowels and consonants) and no spaces, return the length of the longest
vowel substring. Vowels are any of aeiou.

=end

=begin

Problem:
  Write a method that given a lowercase string returns the length of the longest
  vowel substring

  Input: string
  Output: integer

  Rules:
  - all strings are lowercase
  - no spaces
  - vowels are any of aeiou

Data:
  strings, integers, array

Algorithm
  - split string by consonants
  - return length of longest array element

=end

def solve(s)
  s.split(/[^aeiou]/i).max_by(&:length).length
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
