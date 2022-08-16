=begin

Problem:
  Write a method that takes an arbitrary matrix and rotates it 90 degrees
  clockwise

  Input: Nested Array
  Output: Nested Array

  Rules:
    matrix can be any size, but is rectangular

Examples:
  new_matrix1 = rotate90(matrix1)
  new_matrix2 = rotate90(matrix2)
  new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

  p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
  p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
  p new_matrix3 == matrix2

Data:
  Array

Algorithm:
  - initialize a row and column count variable
  - initialize output array
  - iterate from 0 to column count - 1
    - create 3 element array from the iteration index of each subarray
      - iterate from row count - 1 to 0
        - each element is at the [second iterator][first iterator]
    - push to output array
  - output output array

=end

def rotate90(matrix)
  row_count = matrix.size
  column_count = matrix[0].size
  new_matrix = []

  column_count.times do |column_index|
    new_row = []

    (row_count - 1).downto(0) do |row_index|
      new_row << matrix[row_index][column_index]
    end

    new_matrix << new_row
  end

  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
