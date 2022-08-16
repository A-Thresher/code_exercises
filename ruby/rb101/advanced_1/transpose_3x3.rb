=begin

Problem:
  Transpose a 3 x 3 matrix in Array of Arrays format.

  Input: nested array
  Output: nested array

  Rules:
    Do not use the Array#transpose method or Matrix class
    Do not modify the original array

Example:
  matrix = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]

  new_matrix = transpose(matrix)

  p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
  p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

Data:
  Arrays

Algorithm:
  - initialize output array
  - iterate from 0 to 2 (3 times)
    - create 3 element array from the iteration index of each subarray
      - iterate from 0 to 2 (3 times)
        - each element is at the [second iterator][first iterator]
    - push to output array
  - output output array

=end

def transpose(matrix)
  new_matrix = []

  3.times do |column_index|
    new_row = []

    3.times do |row_index|
      new_row << matrix[row_index][column_index]
    end

    new_matrix << new_row
  end

  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
