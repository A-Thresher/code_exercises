=begin

https://www.codewars.com/kata/57f8ff867a28db569e000c4a/train/ruby

Modify the kebabize function so that it converts a camel case string into a
kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

=end

=begin

Problem:
  Write a method that converts camel case into kebab case

  Input: String
  Output: String

  Rules
    return string should have only lowercase letters (remove numbers etc)

Examples:
  kebabize('myCamelCasedString') == 'my-camel-cased-string'
  kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

Data:
  Strings

Algorithm:
  - initialize new string with only alpha characters
  - initialize array for words
  - initialize index counter
  - iterate through string characters
    - if the character is uppercase, add 1 to counter then push to counter index
    - otherwise push character to current index
  - join array with - and return

=end

def kebabize(str)
  working_str = str.chars.select { |char| char.match?(/[a-zA-Z]/) }
  index = 0
  words_array = [working_str.shift]

  working_str.each do |char|
    if char.upcase == char
      index += 1
      words_array[index] = char
    else
      words_array[index] << char
    end
  end

  words_array.join('-').downcase
end

p kebabize('MyCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
