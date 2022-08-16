=begin

https://www.codewars.com/kata/5491689aff74b9b292000334/train/ruby

For a given nonempty string s find a minimum substring t and the maximum number
k, such that the entire string s is equal to t repeated k times. The input
string consists of lowercase latin letters. Your function should return a tuple
(in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:

for string

s = "ababab"
the answer is

["ab", 3]
Example #2:

for string

s = "abcde"
the answer is
["abcde", 1]
because for this string "abcde" the minimum substring t, such that s is t
repeated k times, is itself.

=end

=begin

Problem:
  Write a method that given a string finds the minimum substring that repeats
  within it and the number of times that substring repeats.

  Input: string
  Output: Array
          Two elements, [substring, number of repeats]

  Rules:
    strings are lowercase

Examples:
  f("ababab") == ["ab", 3]
  f("abcde") == ["abcde", 1]

Data:
  Strings, Arrays, integers

Algorithm:
  - initialize return_substring and return_count
  - initialize counter as string length
  - while counter > 0
    - subtract 1 from counter
    - initialize substring as characters 0 to counter of string
    - count the number of substring repeats in string
    - if the count is greater than return_count
      - reassign return_substring to substring, and return_count to count
  - return return_substring and return_count

=end

def f(s)
  return_substring = s
  return_count = 1

  counter = s.length

  while counter > 0
    counter -= 1

    substring = s[0..counter]
    sub_arr = s.scan(/#{substring}/)

    if sub_arr.size > return_count && sub_arr.join.length == s.length
      return_count = sub_arr.size
      return_substring = substring
    end
  end

  [return_substring, return_count]
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

=begin

Better solution:

def f(str)
  (1..str.size).each do |substr_size|
    substr = str[0, substr_size]
    repetitions = str.size / substr_size

    return [substr, repetitions] if substr * repetitions == str
  end
end

Remember, it's looking for a direct comparison of output to input, it's easy
to set up the return requirement with ==

=end
