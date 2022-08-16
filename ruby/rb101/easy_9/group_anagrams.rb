=begin

Problem:
  Given an array of words, print out sub-arrays containing words that are
  anagrams.

  Input: Array
  Output: Printed arrays

  Rules:
  - Anagrams are words that contain the same letters
  - All words provided are the same length

Examples:
  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']
  => ["demo", "dome", "mode"]
  => ["neon", "none"]
  => (etc)

Data:
  Array, String, Hash

Algorithm:
  - initialize anagram hash
  - determine if the current word is an anagram of previous words
    - sort current word and compare to hash keys
    - if it matches a key then add the word to that key's values
    - if it does not match create a new key of the sorted word and add the
      original word to the new key's values
  - print the values of the hashes that have a size > 1

=end

def anagrams(word_arr)
  anagrams = {}

  word_arr.each do |word|
    sorted_word = word.chars.sort.join

    if anagrams.key?(sorted_word)
      anagrams[sorted_word] << word
    else
      anagrams[sorted_word] = [word]
    end
  end

  anagrams.each_value { |word_arr| p word_arr if word_arr.size > 1 }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)

#["demo", "dome", "mode"]
#["neon", "none"]
#(etc)
