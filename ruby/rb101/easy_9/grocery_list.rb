=begin

Problem:
  Write a method that takes a nested array of fruits and quantities and converts
  it into a flat array containing the correct number of each fruit.

  Input: Array
  Output: Array

  Rules
  - nested arrays will contain the fruit string and the integer quantity

Examples:
  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    ["apples", "apples", "apples", "orange", "bananas","bananas"]

Data:
  Array, String, Integer

Algorithm:
  - initialize result array
  - iterate through the sub-arrays
    - push the fruit string to the result array quantity times
  return result array

=end

def buy_fruit(arr)
  results_arr = []

  arr.each do |fruit, quantity|
    quantity.times { results_arr << fruit }
  end

  results_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
