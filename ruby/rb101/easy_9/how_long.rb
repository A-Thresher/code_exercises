=begin

Problem:
  Write a method that takes a string and returns an array that contains every
  word appended with a space and the word length.

  Input: String
  Output: Array

  Rules:
    - Words will be separated by 1 space
    - Any substring of non-space characters is a word

Examples:
  word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

  word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

  word_lengths("It ain't easy, is it?") ==
    ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

  word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

  word_lengths("") == []

Data:
  String, Array

Algorithm:
  - Split the string into an array of words
    - split method should be sufficient
  - Iterate through the array
    - get word length
    - append word length to word separated by a space
  - return array

=end

def word_lengths(str)
  words = str.split(' ')
  words.map {|word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") ==
  ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
