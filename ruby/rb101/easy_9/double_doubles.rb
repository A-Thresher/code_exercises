=begin

Problem:
  Write a method that returns 2 times the number provided unless the argument
  is a double number which should be returned as is

  Input: Integer
  Output: Integer

  Rules:
    - Method returns an integer
    - Return double numbers as is
    - Return 2 times all other numbers

Examples:
  twice(37) == 74
  twice(44) == 44
  twice(334433) == 668866
  twice(444) == 888
  twice(107) == 214
  twice(103103) == 103103
  twice(3333) == 3333
  twice(7676) == 7676
  twice(123_456_789_123_456_789) == 123_456_789_123_456_789
  twice(5) == 10

Data:
  Integer, Array

Algorithm:
  - Check number for double number status
    - split number into digits array
    - find middle of array by dividing its size by 2
    - compare first half of array to second half
      - if equivalent it is a double
  - If double number return number
  - If not double number multiply by 2 and return product

=end

def twice(num)
  num_arr = num.digits
  middle = num_arr.size / 2
  if num_arr[0...middle] == num_arr[middle..-1]
    return num
  else
    return num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
