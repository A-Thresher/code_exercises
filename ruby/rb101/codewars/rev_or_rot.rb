=begin

Problem:
  Given a string and an integer, divide the string into substrings of integer length. Disregard left over characters. If the substring represents an integer such that the sum of the cubes of its digits is even reverse it, otherwise rotate it to the left by one position. Combine the modified chunks and return as a string

  Input: String, integer
  Output: String

  Rules
    return an empty string if integer is less than 0 or the input string is shorter than the integer length
    reverse chunk if sum of the cubes of its digits is divisible by 2
    ignore chunks if size is less than integer

Examples:
  "6644387523", 4 -> 6644, 3875 --> 4466, 8753 --> 44668753

Data:
  strings, integers, arrays

Algorithm:
  - return '' if input int is <= 0 or if input string length is < input int
  - initialize a chunk array []
  - slice input string into chunks
    - each_slice(input_int), push each chunk into chunk array, unless chunk size is less than input_int
  - iterate through chunks (map)
    - check if sum of the cubes of the chunks digits is divisible by 2
      - inject with a block
      - if yes, reverse chunk
        -string.reverse
      - if no, rotate chunk
        - string[1..-1] + string[0]
  - join and return chunks
=end

def rotate(string)
  string[1..-1] + string[0]
end

def cube_sum_even?(string)
  string.chars.inject(0) { |sum, num| sum + (num.to_i ** 3) }.even?
end

def revrot(string, length)
  return '' if length <= 0 || string.length < length

  chunks = []
  string.chars.each_slice(length) { |chunk| chunks << chunk.join if chunk.size == length }

  chunks.map do |chunk|
    cube_sum_even?(chunk) ? chunk.reverse : rotate(chunk)
  end.join
end

p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""
p revrot("563000655734469485", 4) == "0365065073456944"
