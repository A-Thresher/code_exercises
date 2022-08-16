=begin

Problem:
  Write a method that takes a sentence string as input, and returns the same
  string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
  'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

  Inputs: String
  Output: String

  Rules:
  - Single digit numbers only

Examples:
  word_to_digit('Please call me at five five five one two three four. Thanks.')
             == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Data:
  String, Hash, Array

Algorithm:
  - generate word/digit hash
  - initialize result array
  - split input string into array of words
  - iterate through word array
    - check word (less punctuation) for hash key
    - if word is in the hash, push the digit value to the result array
    - else push the word to the result array
    - if the word ends in '.', push a '.' to the result array
  - Join result array and return

=end

WORD_DIGIT = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
  'eight' => '8', 'nine' => '9', }

def word_to_digit(str)
  result_array = []

  str.split.each do |word|
    if WORD_DIGIT.include?(word.gsub(/\W/, ''))
      result_array << WORD_DIGIT[word.gsub(/\W/, '')]
    else
      result_array << word.gsub(/\W/, '')
    end

    result_array[-1] << word[-1] if word.match(/\W/)
  end

  p result_array.join(' ')
end

# def word_to_digit(str)
#   WORD_DIGIT.keys.each do |word|
#     str.gsub!(/\b#{word}\b/i, WORD_DIGIT[word])
#   end

#   # add marker to digit, remove marker and local space?
#   # regex to capture number patterns?

#   p str
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.')\
           == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
