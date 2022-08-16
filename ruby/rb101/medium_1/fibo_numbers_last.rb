=begin

Problem:
  Return the last digit of the nth fibonacci number

  Input: integer
  Output: integer

  Rules:
  - large n numbers require a procedural solution

Examples:
  fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
  fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
  fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179..
                                                                    ..261915075)
  fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
  fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
  fibonacci_last(123456789) # -> 4

Data:
  integer

Algorithm:
  - initialize sum1 and sum2 as 1
  - subtract 2 from input number
  - iterate input number times
    - store sum2 in storage variable
    - set sum2 = sum1 + sum2
    - set sum1 = storage variable
  -return the last of sum2's digits

=end

def fibonacci_last(num)
  sum1, sum2 = [1, 1]
  iterations = num - 2
  iterations.times do |_|
    sum1, sum2 = [sum2, sum1 + sum2]
  end
  sum2.digits[0]
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 35422484817926..
                          #                                           ..1915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4
