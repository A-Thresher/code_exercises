=begin

Problem:
  Merge two sorted arrays into one sorted array and return

  Input: 2 Arrays
  Output: 1 Array

  Rules:
    No post merge sorting, sorting must occur during merging one element at a
      time
    Do not mutate the input arrays

Examples:
  merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
  merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
  merge([], [1, 4, 5]) == [1, 4, 5]
  merge([1, 4, 5], []) == [1, 4, 5]

Data:
  Arrays, Integers

Algorithm:
  - initialize duplicate arrays
  - initialize an output array
  - while both arrays are not empty
    - compare the 0 index of duplicate arrays
    - shift the lesser value to the output array
  - concatenate the remaining values in the non-empty array to the output
  - return output array

=end

def merge(arr1, arr2)
  dup_arr1 = arr1.dup
  dup_arr2 = arr2.dup
  output_array = []

  until dup_arr1.empty? || dup_arr2.empty?
    if dup_arr1[0] <= dup_arr2[0]
      output_array << dup_arr1.shift
    else
      output_array << dup_arr2.shift
    end
  end

  dup_arr1.empty? ? output_array += dup_arr2 : output_array += dup_arr1

  output_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
