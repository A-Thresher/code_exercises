=begin

Problem:
  Take two arguments, starting number and ending number. Print all numbers in
  the range given, replacing numbers dvisible by 3 with 'Fizz', divisible by 5
  with 'Buzz', and divisible by both with 'FizzBuzz'

  Input: integers
  Output: direct print of integers and strings

  Rules:
    - Include the numbers given in the range
    - No result storage required, direct printing

Examples:
  fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz,
                       11, Fizz, 13, 14, FizzBuzz

Data:
  - Range (Array?)

Algorithm:
  - create range from input arguments
  - check each value in range for divisibity by 3 and 5
    - use .each method on range
    - use if to check divisibility
  - print number, 'Fizz', 'Buzz', or 'FizzBuzz' based on divisibility
  - print text seperator ", " unless the last number is being evaluated, then
    put an line break

=end

def fizzbuzz(first, last)
  (first..last).each do |i|
    if i % 3 == 0 && i % 5 == 0
      print 'FizzBuzz'
    elsif i % 3 == 0
      print 'Fizz'
    elsif i % 5 == 0
      print 'Buzz'
    else
      print i
    end

    i == last ? puts : print(", ")
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz,
                #    11, Fizz, 13, 14, FizzBuzz
