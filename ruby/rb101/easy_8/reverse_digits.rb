=begin

Problem:
  Reverse the digits of a given number

  Input: integer
  Output: integer

  Rules:
  - return value does not need to include leading zeros (see example 4)
  - single digit numbers are returned as is

Examples:
  reversed_number(12345) == 54321
  reversed_number(12213) == 31221
  reversed_number(456) == 654
  reversed_number(12000) == 21 # No leading zeros in return value!
  reversed_number(12003) == 30021
  reversed_number(1) == 1

Data:
  integers

Algorithm:
  - transform the number into a string
  - reverse the string
  - transform back into an integer

=end

def reversed_number(int)
  int.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
