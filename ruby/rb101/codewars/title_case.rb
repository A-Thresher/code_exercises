=begin

Problem:
  Given a string and a string of exceptions, return a new string in title case.

  Input: 2 strings
  Output: String

  Rules:
    Title case -> every word capitalized
    exceptions -> uncapitalized unless the first word
    return empty string if given empty string

Examples:
'THE WIND IN THE WILLOWS', 'The In' == 'The Wind in the Willows'

Data:
  Strings, Arrays

Algorithm:
  - downcase and split exceptions into array of exceptions
  - downcase and split input string into words
  - iterate through the words (map)
    - capitalize word unless the word is in the exception array (return word if so)
  - capitalize the first word
  - join and return string

=end

def title_case(string, exceptions = '')
  return '' if string.empty?

  exceptions = exceptions.downcase.split
  words = string.downcase.split.map! do |word|
    exceptions.include?(word) ? word : word.capitalize
  end

  words[0].capitalize!
  words.join(' ')
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
