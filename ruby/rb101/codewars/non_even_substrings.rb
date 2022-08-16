=begin

https://www.codewars.com/kata/59da47fa27ee00a8b90000b4/train/ruby

Given a string of integers, return the number of odd-numbered substrings that
can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a
total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

=end

=begin

Problem:
  Write a method that given a string of integers returns the number of odd-
  numbered substrings that can be formed.

  Input: String
  Output: Integer

  Rules:
  - duplicate numbers are counted individually

Data:
  strings, integers, array

Algorithm:
  - initialize count
  - iterate through the string characters with index
    - check character odd or even
      - if even, next
      - if odd, add index + 1 to count
  return count

=end

def solve(s)
  s.each_char.with_index.sum(0) do |char, index|
    char.to_i.odd? ? index + 1 : 0
  end
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
