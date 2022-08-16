=begin

https://www.codewars.com/kata/59d9ff9f7905dfeed50000b0/train/ruby

Consider the word "abode". We can see that the letter a is in position 1 and b
is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice
also that d and e in abode occupy the positions they would occupy in the
alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy
their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase.
No spaces.

=end

=begin

Problem:
  Write a method that given an array of words returns the number of letters in
  each word that match their position in the alphabet.

  Input: Array of strings
  Output: Array of integers

  Rules:
  - words will have no spaces
  - position is case-insensitive
  - the array has an unknown number of words

Data:
  strings, integers, array

Algorithm
  - iterate through array of strings with .map
    - downcase the word
    - iterate through the characters of the word with select
      - add 1 to count if the character matches its alpha placement
        - compare character index to character ordinate - 97
    - return selection array size

=end

def solve(arr)
  arr.map do |word|
    word.downcase.each_char.with_index.count do |char, index|
      index == (char.ord - 97)
    end
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
