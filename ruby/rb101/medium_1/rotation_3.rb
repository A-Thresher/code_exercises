=begin

Problem:
  Write a method that takes an integer and returns the maximum rotation of that
  integer.

  Input: Integer
  Output: Integer

  Rules:
  - Maximum Rotation: If you take a number like 735291, and rotate it to the
    left, you get 352917. If you now keep the first digit fixed in place, and
    rotate the remaining digits, you get 329175. Keep the first 2 digits fixed
    in place and rotate again to 321759. Keep the first 3 digits fixed in place
    and rotate again to get 321597. Finally, keep the first 4 digits fixed in
    place and rotate the final 2 digits to get 321579. The resulting number is
    called the maximum rotation of the original number.
  - If the rotation results in a leading zero it is dropped
  - Do not include multiple zeros

Examples:
  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845

Data:
  Integer, Array

Algorithm:
  X initialize a return array
  X transform the input integer into an array
  X initialize a return integer assigned to the input integer
  - iterate from the digit length of the input integer down to 2
    - rotate the iteration digits of the integer and reassign to the
      integer variable
    X push the first element of the rotated array to the return array
  - return the rotated integer
=end

def rotate_array(arr)
  return_array = arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(num, digits)
  num_array = num.digits.reverse
  rotated_digits = num_array[-digits..-1]
  return_array = num_array[0...-digits] + rotate_array(rotated_digits)
  return_array.join.to_i
end

def max_rotation(num)
  (2..num.digits.size).reverse_each do |digit|
    num = rotate_rightmost_digits(num, digit)
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
