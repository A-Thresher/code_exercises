=begin

codewars.com/kata/51e056fe544cf36c410000fb/train/ruby

Write a function that, given a string of text (possibly with punctuation and
  line-breaks), returns an array of the top-3 most occurring words, in
  descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more
  apostrophes (') in ASCII. (No need to handle fancy punctuation.)
Matches should be case-insensitive, and the words in the result should be
  lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1
 words should be returned, or an empty array if a text contains no words.
Examples:
top_3_words("In a village of La Mancha, the name of which I have no desire to
  call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")
# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")
# => ["won't", "wont"]
Bonus points (not really, but just for fun):
Avoid creating an array whose memory footprint is roughly as big as the input
  text.
Avoid sorting the entire array of unique words.

=end

=begin

Problem:
  Write a method that takes a string and returns the top 3 most occuring words,
  in descending order, in an array

  Input: String
  Output Array

  Rules:
    Words are a string of letters and apostrophes
      Apostrophes alone don't count as a word, only leave as punctuation
    Case insensitive, results array should be lowercase
    Ties can be unsorted
    If the string contains <3 words, return the words or an empty array

Examples:
  top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
  top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") ==
    ["e", "ddd", "aa"]
  top_3_words("  //wont won't won't ") == ["won't", "wont"]
  top_3_words("  , e   .. ") == ["e"]
  top_3_words("  ...  ") == []
  top_3_words("  '  ") == []
  top_3_words("  '''  ") == []
  top_3_words("""In a village of La Mancha, the name of which I have no desire
  to call to
  mind, there lived not long since one of those gentlemen that keep a lance
  in the lance-rack, an old buckler, a lean hack, and a greyhound for
  coursing. An olla of rather more beef than mutton, a salad on most
  nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
  on Sundays, made away with three-quarters of his income.""") ==
    ["a", "of", "on"]

Data:
  Strings, arrays, integers, hash

Algorithm:
  - split string into array of words
  - remove non alpha substrings
  - create hash with keys that are the unique words and value of 0
  - Iterate through keys, counting the occurance in the original string and
    changing the value to the count
  - Return array of top three keys in an array

=end

def top_3_words(text)
  words = text.downcase
              .gsub(/[^a-z ']/, '')
              .split(' ')
              .select { |word| word.match?(/[a-z]/) }

  return words if words.empty? || words.size == 1

  counted = words.uniq.each_with_object({}) { |word, hash| hash[word] = 0 }

  counted.keys.each { |key| counted[key] = words.count(key) }

  counted = counted.to_a.sort_by { |arr| arr[1] }.reverse.to_h

  counted.keys[0..2]
end


p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
