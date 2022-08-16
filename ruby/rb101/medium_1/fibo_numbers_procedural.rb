=begin

Problem
  Rewrite the recursive fibonacci method so that it computes its results without
  recursion

  Input: Integer
  Output: Integer

  Rules
  - Do not use recursion
  - The Fibonacci series is a sequence of numbers starting with 1 and 1 where
  each number is the sum of the two previous numbers: the 3rd Fibonacci number
  is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.
  Mathematical Solution:
  F(1) = 1
  F(2) = 1
  F(n) = F(n - 1) + F(n - 2) where n > 2

Examples:
  fibonacci(20) == 6765
  fibonacci(100) == 354224848179261915075
  fibonacci(100_001) # => 4202692702.....8285979669707537501

Data:
  Integer

Algorithm:
  - initialize sum1 and sum2 as 1
  - subtract 2 from input number
  - iterate input number times
    - store sum2 in storage variable
    - set sum2 = sum1 + sum2
    - set sum1 = storage variable
  -return sum2

=end

def fibonacci(num)
  sum1 = 1
  sum2 = 1
  iterations = num - 2
  iterations.times do |_|
    store = sum2
    sum2 += sum1
    sum1 = store
  end
  sum2
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
