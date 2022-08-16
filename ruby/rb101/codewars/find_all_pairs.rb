=begin

https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby

You are given array of integers, your task will be to count all pairs in that
array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.:
for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between
0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

=end

=begin

Problem:
  Write a method that counts the number of number pairs in an array

  Input: Array
  Output: Integer

  Rules
  - Each number can only be part of one pair (4 equal numbers is 2 pair not 6)
  - Return 0 for empty or single digit arrays

Data:
  array, integer

Algorithm:
  - initialize pair count
  - iterate through the unique values of array
    - divide the number of times each digit occurs in the array by 2
    - add result to pair count
  - return pair count

=end

def pairs(arr)
  count = 0
  arr.uniq.each { |num| count += arr.count(num) / 2 }
  count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
