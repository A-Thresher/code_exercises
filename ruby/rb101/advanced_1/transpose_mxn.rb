=begin

Problem:
  Modify the 3x3 transpose method to work with any number of rows and columns.

  Input: Nested array
  Output: Nested array

  Rules:
    Do not use the Array#transpose method or Matrix class
    Do not modify the original array
    Rows are of equal length

Examples:
  transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
  transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
  transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
    [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
  transpose([[1]]) == [[1]]

Data:
  Arrays

Algorithm:
  - initialize a row and column count variable
  - initialize output array
  - iterate from 0 to column count - 1
    - create 3 element array from the iteration index of each subarray
      - iterate from 0 to row count - 1
        - each element is at the [second iterator][first iterator]
    - push to output array
  - output output array

=end

def transpose(matrix)
  row_count = matrix.size
  column_count = matrix[0].size
  new_matrix = []

  column_count.times do |column_index|
    new_row = []

    row_count.times do |row_index|
      new_row << matrix[row_index][column_index]
    end

    new_matrix << new_row
  end

  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
