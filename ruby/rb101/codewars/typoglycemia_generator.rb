=begin

https://www.codewars.com/kata/55953e906851cf2441000032/train/ruby

There is a message that is circulating via public media that claims a reader can
easily read a message where the inner letters of each words is scrambled, as
long as the first and last letters remain the same and the word contains all the
letters.

Another example shows that it is quite difficult to read the text where all the
letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern,
but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

the first and last characters remain in original place for each word
characters between the first and last characters must be sorted alphabetically
punctuation should remain at the same place as it started, for example: shan't
-> sahn't

Assumptions

words are seperated by single spaces
only spaces separate words, special characters do not, for example: tik-tak ->
  tai-ktk
special characters do not take the position of the non special characters, for
  example: -dcba -> -dbca
for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('),
  comma(,) and period(.)
ignore capitalisation
for reference: http://en.wikipedia.org/wiki/Typoglycemia

=end

=begin

Problem:
  Write a method that given a string alphabetizes the characters of each word,
  excluding the first and last characters, and any punctuation.

  Input: String
  Output: String

  Rules:
    First and last characters of each word remain in place
    Punctuation remains in place and does not count as first or last character
    puctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,)
      and period(.)
    Ignore capitalization

Example:
  scramble_words('professionals') == 'paefilnoorsss'
  scramble_words('i') == 'i'
  scramble_words('') == ''
  scramble_words('me') == 'me'
  scramble_words('you') == 'you'
  scramble_words('card-carrying') == 'caac-dinrrryg'
  scramble_words("shan't") == "sahn't"
  scramble_words('-dcba') == '-dbca'
  scramble_words('dcba.') == 'dbca.'

Data:
  strings, arrays, hash

Algorithm
  - initialize an array as the string split by spaces
  - transform each word
    - initialize hash with first, last, and punctuation keys
    - remove and assign the characters to the appropriate keys
      - include index for punctuation (select with index?)
    - sort remaining characters
    - insert removed characters
  - join and return array

=end

PUNCTUATION = %w(- ' , .)

def scramble_words(string)
  words = string.split

  words.map! do |word|
    word = word.chars
    static_chars = { punc: [] }

    word.select!.with_index do |char, index|
      if PUNCTUATION.include?(char)
        static_chars[:punc] << [char, index]
      end

      ('a'..'z').include?(char.downcase)
    end

    static_chars[:first], static_chars[:last] = word.shift, word.pop

    word = word.sort
               .prepend(static_chars[:first])
               .append(static_chars[:last])

    static_chars[:punc].each do |punctuation|
      word = word.insert(punctuation[1], punctuation[0])
    end

    word.join
  end

  words.join(' ')
end

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
