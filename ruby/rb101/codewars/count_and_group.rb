=begin

Problem:
  Given a string, construct a hash where the keys are the number of occurences and the values are arrays of letters in alphabetical order.

  Input: String
  Output: Hash

  Rules:
    case insensitive, record all as lowercase
    alpha and numeric characters only
    character value arrays should be alphabetical
    hash keys should be sorted by value (descending)

Examples:
  ("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
  ("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

Data:
  Strings, arrays, hashes, integers

Algorithm:
  - downcase, remove all non alpha and numeric characters, and sort the input string (initialize to a new variable)
  - initialize count hash (default empty array value)
  - iterate through unique string characters
    - count the number of occurances in the string
    - push the current character to the array value of the count key
  - return count hash

=end

def get_char_count(string)
  characters = string.downcase.delete('^a-z0-9').chars.sort
  characters.uniq.each_with_object({}) do |char, count_hash|
    character_count = characters.count(char)
    count_hash[character_count] = [] unless count_hash.key?(character_count)
    count_hash[character_count] << char
  end.sort { |a, b| b <=> a }.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
