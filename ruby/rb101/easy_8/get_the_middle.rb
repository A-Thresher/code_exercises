=begin

Problem:
  Return the middle character or characters of a given string.

  Input: string
  Ouput: string

  Rules:
  - In odd length strings return 1 center character
  - In even length string return 2 center characters
  - All characters are counted
  - Single character strings return the initial character
  - no empty strings

Examples:
  center_of('I love ruby') == 'e'
  center_of('Launch School') == ' '
  center_of('Launch') == 'un'
  center_of('Launchschool') == 'hs'
  center_of('x') == 'x'

Data:
  strings

Algorithm:
  - Evaluate string length
  - divide the length by 2 to find the middle value
    - if odd the middle value will correspond to the character index, return
      that character
    - if even the middle value will correspond to the second character index,
      return the character preceding it as well as itself

=end

def center_of(str)
  middle = str.length / 2
  str.length.odd? ? str[middle] : str[middle - 1, 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
