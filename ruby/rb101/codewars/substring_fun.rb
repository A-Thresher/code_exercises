=begin

https://www.codewars.com/kata/565b112d09c1adfdd500019c/train/ruby

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which
should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty
array; and each word will have enough letters.

=end

=begin

Problem:
  Write a method that given an array of words constructs a new word out of the
  characters found at a matching index to the word's index in the array.

  Input: Array of words
  Output: String

  Rules:
    Valid test cases only
    Match case of letter in word

Examples:
  nth_char(['yoda', 'best', 'has']) == 'yes'
  nth_char([]) == ''
  nth_char(['X-ray']) == 'X'
  nth_char(['No', 'No']) == 'No'
  nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas',
            'Ecuador', 'Micronesia']) ==  'Codewars'

Data:
  Arrays, Strings

Algorithm:
  - initialize output string
  - iterate through array with index
    - take the character at the index and push to output string
  - return output string

=end

def nth_char(words)
  words.each_with_object('').with_index { |(word, str), idx| str << word[idx] }
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas',
            'Ecuador', 'Micronesia']) ==  'Codewars'
