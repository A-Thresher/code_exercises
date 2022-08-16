=begin

Problem:
  Compute the Fibonacci number of the method argument using a recursive method

  Input: Integer
  Output: Integer

  Rules:
  - Method must use recursion
  - The Fibonacci series is a sequence of numbers starting with 1 and 1 where
    each number is the sum of the two previous numbers: the 3rd Fibonacci number
    is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.
    Mathematical Solution:
    F(1) = 1
    F(2) = 1
    F(n) = F(n - 1) + F(n - 2) where n > 2

Examples:
  fibonacci(1) == 1
  fibonacci(2) == 1
  fibonacci(3) == 2
  fibonacci(4) == 3
  fibonacci(5) == 5
  fibonacci(12) == 144
  fibonacci(20) == 6765

Data:
  Integer

Algorithm:
  - return 1 if the argument equals 1 or 2
  - sum the return values of the fibonacci method called on the argument - 1 and
    the argument - 2 (see mathematical solution in Rules)

=end

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
