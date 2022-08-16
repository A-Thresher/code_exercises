=begin

4:27 - 4:44

Problem:
  Given a string with multiple words separated by spaces reverse each word then combine in groups of two, odd number of words leave the last word on its own. Repeat until only one word remains

  Input: String
  Output: String

  Rules:
    if there are an odd number of words leave the last on its own (still reverse it)
    all characters, words separated by spaces

Examples:
  reverse_and_combine_text("abc def") == "cbafed"
  reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
  reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
  reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") ==
    trzwqfdstrteettr45hh4325543544hjhjh21lllll"

Data:
  Strings, arrays

Algorithm:
  - split the input string into words array
  - loop until the words array is one element
    - rev_combine method, input words array, reassign words array to return value
      - initialize working array
      - iterate through array of words 2 at a time
        - reverse words
        - combine words
        - push to working array
      - return working array
  - return words array first element

=end

def rev_combine(array)
  array.each_slice(2).with_object([]) do |(word1, word2), memo|
    word2 == nil ? memo << word1.reverse : memo << (word1.reverse + word2.reverse)
  end
end

def reverse_and_combine_text(string)
  words = string.split

  until words.size == 1
    words = rev_combine(words)
  end

  words.first
end

# p rev_combine(['abc', 'def', 'ghi', 'jkl', 'mno'])

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
