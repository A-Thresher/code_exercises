=begin

Problem:
  Merge sort an input array.

  Input: Array
  Output: Array

  Rules:
    Merge sort is a recursive sorting algorithm that works by breaking down the
    array elements into nested sub-arrays, then recombining those nested sub-
    arrays in sorted order.

    [9, 5, 7, 1] ->            |->  [[[9], [5]], [[7], [1]]] ->
    [[9, 5], [7, 1]] ->        |    [[5, 9], [1, 7]] ->
    [[[9], [5]], [[7], [1]]]  -|    [1, 5, 7, 9]

Examples:
  merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
  merge_sort([5, 3]) == [3, 5]
  merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
  merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
            %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
  merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
            [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

Data:
  Arrays

Algorithm:
  - Break input array into nested sub-arrays
    - initialize an output array
    - slice input array into 2 element subs (each_slice(2))
    - convert elements of subs into single element arrays
  - Recursively merge nested sub-arrays until one array remains
    - if the array has more than two elements
      - call merge on
  - Return final array

=end

def merge_sort(array)
  return array if array.size == 1

  middle = array.size / 2

  arr1 = merge_sort(array[0...middle])
  arr2 = merge_sort(array[middle..-1])

  output_array = []

  until arr1.empty? || arr2.empty?
    if arr1[0] <= arr2[0]
      output_array << arr1.shift
    else
      output_array << arr2.shift
    end
  end

  arr1.empty? ? output_array += arr2 : output_array += arr1

  output_array
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
           %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
           [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
