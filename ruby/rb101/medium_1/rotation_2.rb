=begin

Problem:
  Write a method that can rotate the last n digits of a number

  Input: Integer, Integer
  Output: Integer

  Rules:
  - Rotating 1 digit results in the original number being returned
  - Number of rotating digits is always a positive integer

Examples:
  rotate_rightmost_digits(735291, 1) == 735291
  rotate_rightmost_digits(735291, 2) == 735219
  rotate_rightmost_digits(735291, 3) == 735912
  rotate_rightmost_digits(735291, 4) == 732915
  rotate_rightmost_digits(735291, 5) == 752913
  rotate_rightmost_digits(735291, 6) == 352917

Data
  Integer, Array

Algorithm:
  - transform the input number into an array
  - initialize altered digits array of the last n digits of the input array
  - rotate the digits of the altered digits array
  - assemble the return array from the unaltered portion of the input array and
    the altered digits array
  - return the joined return array, transformed into an integer

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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
