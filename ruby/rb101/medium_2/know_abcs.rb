=begin

Problem:
  Given a set of spelling blocks, write a method that returns `true` if the
  word passed in as an argument can be spelled, false otherwise.

  Input: string
  Output: boolean

  Rules:
  - Spelling Blocks:
    B:O   X:K   D:Q   C:P   N:A
    G:T   R:E   F:S   J:W   H:U
    V:I   L:Y   Z:M
  - case-insensitive
  - Each block can only be used once (note this means a letter can only appear
    once)

Examples:
  block_word?('BATCH') == true
  block_word?('BUTCH') == false
  block_word?('jest') == true

Data:
  strings, arrays

Algorithm
  - create block constant array
  - split word into array of characters
  - check word for duplicate letters, return false if they exist
  - iterate through the spelling blocks
    - if the word contains a character, check that it does not also contain the
      blocked character
    - if it does contain a blocked character break and return false
  - if there are not blocked characters return true

=end

BLOCKS = [['b', 'o'], ['x', 'k'], ['d', 'q'], ['c', 'p'], ['n', 'a'],
          ['g', 't'], ['r', 'e'], ['f', 's'], ['j', 'w'], ['h', 'u'],
          ['v', 'i'], ['l', 'y'], ['z', 'm']]

def block_word?(word)
  characters = word.downcase.chars
  return false if characters != characters.uniq

  block_pass = BLOCKS.map do |char1, char2|
    characters.include?(char1) && characters.include?(char2)
  end

  block_pass.include?(true) ? false : true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('test') == false
