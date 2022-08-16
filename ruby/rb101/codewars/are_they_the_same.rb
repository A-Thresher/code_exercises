=begin

2:50 - 3:13

Problem:
  Given two arrays, check that the second array contains the squares of the first array.

  Input: 2 arrays
  Output: boolean

  Rules:
    the two arrays are the same length, dups don't count
    each element in array 1 only accounts for 1 element in array 2 (dups don't count)
    the second array must contain the square of every number in the first array
    input can be `nil`

Examples:
  comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
  comp([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false

Data:
  Arrays, integers, booleans

Algorithm:
  - return false if the array lengths do not match, or either input is nil
  - create a duplicate of array 2
  - iterate through the first array
    - iterate through array 2 dup with index
      - if the square of the current element of array 1 equals the current element of array 2 delete that element
      - break
  - return true if array 2 dup is empty, false otherwise

=end

def comp(array1, array2)
  return false if [array1, array2].include?(nil) || array1.length != array2.length

  dup_arr2 = array2.dup

  array1.each do |value|
    dup_arr2.each_with_index do |square, idx|
      if (value ** 2) == square
        dup_arr2.delete_at(idx)
        break
      end
    end
  end

  dup_arr2.empty?
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) == true
p comp([121, 144, 19, 161, 19, 144, 19, 11] , [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false
p comp(nil, [1, 2, 3]) == false
p comp([1, 2], []) == false
p comp([1, 2], [1, 4, 4]) == false
