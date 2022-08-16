=begin

https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby

A pangram is a sentence that contains every single letter of the alphabet at
least once. For example, the sentence "The quick brown fox jumps over the lazy
dog" is a pangram, because it uses the letters A-Z at least once (case is
irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is,
False if not. Ignore numbers and punctuation.

=end

=begin

Problem:
  Write a method that returns true if a string is a pangram and false otherwise

  Input: String
  Output: boolean

  Rules
    Pangrams contain every letter of the alphabet at least once
    Case insensitive
    Ignore numbers and punctuation

Examples:
  pangram?("The quick brown fox jumps over the lazy dog.") == true
  pangram?("This is not a pangram.") == false

Data:
  Strings, booleans, array

Algorithm:
  - initialize a working string, downcase and a-z only
    - .downcase, .gsub
  - check it includes every alpha character
    - .all?
    - return true if yes, false otherwise

=end

def pangram?(string)
  ('a'..'z').all? { |letter| string.downcase.match?(letter) }
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
