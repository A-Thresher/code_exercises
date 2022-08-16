=begin

Problem:
  Write a method that sorts an input array using the bubble sort method.

  Input: Array
  Output: Array

  Rules:
    Bubble sort methodology: https://en.wikipedia.org/wiki/Bubble_sort
    mutate the input array
    The input array contains at least 2 elements

Examples:
  array = [5, 3]
  bubble_sort!(array)
  array == [3, 5]

  array = [6, 2, 7, 1, 4]
  bubble_sort!(array)
  array == [1, 2, 4, 6, 7]

  array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
  bubble_sort!(array)
  array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

Data:
  Arrays

Algorithm:
  - initialize sorted array as a duplicate of input array
  - loop
    - iterate through consecutive 2 element sub-arrays of the input array
      - compare sorted sub-array to parameter sub-array
        - if different swap elements
    - compare input array with sorted array
      - break if equivalent
      - reassign sorted array to input array if not equivalent
  -return input array

=end

def bubble_sort!(array)
  sorted_array = array.dup

  loop do
    0.upto(array.size - 2) do |index|
      if array[index + 1] <= array[index]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end

    array == sorted_array ? break : sorted_array = array.dup
  end

  array
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
