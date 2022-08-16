=begin

Write a function done_or_not/DoneOrNot passing a board (list[list_lines]) as
parameter. If the board is valid return 'Finished!', otherwise return 'Try
again!'

Sudoku rules:

Complete the Sudoku puzzle so that each and every row, column, and region
contains the numbers one through nine only once.

Rows:
There are 9 rows in a traditional Sudoku puzzle. Every row must contain the
numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. There may not be any duplicate numbers in
any row. In other words, there can not be any rows that are identical.

In the illustration the numbers 5, 3, 1, and 2 are the "givens". They can not be
changed. The remaining numbers in black are the numbers that you fill in to
complete the row.

Columns:
There are 9 columns in a traditional Sudoku puzzle. Like the Sudoku rule for
rows, every column must also contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9.
Again, there may not be any duplicate numbers in any column. Each column will be
unique as a result.

In the illustration the numbers 7, 2, and 6 are the "givens". They can not be
changed. You fill in the remaining numbers as shown in black to complete the
column.

Regions
A region is a 3x3 box like the one shown to the left. There are 9 regions in a
traditional Sudoku puzzle.

Like the Sudoku requirements for rows and columns, every region must also
contain the numbers 1, 2, 3, 4, 5, 6, 7, 8, and 9. Duplicate numbers are not
permitted in any region. Each region will differ from the other regions.

In the illustration the numbers 1, 2, and 8 are the "givens". They can not be
changed. Fill in the remaining numbers as shown in black to complete the region.

Valid board example:
For those who don't know the game, here are some information about rules and how
to play Sudoku: http://en.wikipedia.org/wiki/Sudoku and
http://www.sudokuessentials.com/

=end

=begin

Problem:
  Write a method that given an array of rows can determine if the rows produce a
  finished, correct, sudoku board. Return 'Finished!' if correct and
  'Try Again!' if not

  Input: Nested Array
    Each nested array represents a row of a Sudoku board
  Output: String

  Rules:
    Each Row can only contain 1-9 once
    Each Column can only contain 1-9 once
    Each Region can only contain 1-9 once

Examples:
  [[5, 3, 4, 6, 7, 8, 9, 1, 2],
   [6, 7, 2, 1, 9, 5, 3, 4, 8],
   [1, 9, 8, 3, 4, 2, 5, 6, 7],
   [8, 5, 9, 7, 6, 1, 4, 2, 3],
   [4, 2, 6, 8, 5, 3, 7, 9, 1],
   [7, 1, 3, 9, 2, 4, 8, 5, 6],
   [9, 6, 1, 5, 3, 7, 2, 8, 4],
   [2, 8, 7, 4, 1, 9, 6, 3, 5],
   [3, 4, 5, 2, 8, 6, 1, 7, 9]] => 'Finished!'

  [[5, 3, 4, 6, 7, 8, 9, 1, 2],
   [6, 7, 2, 1, 9, 0, 3, 4, 9],
   [1, 0, 0, 3, 4, 2, 5, 6, 0],
   [8, 5, 9, 7, 6, 1, 0, 2, 0],
   [4, 2, 6, 8, 5, 3, 7, 9, 1],
   [7, 1, 3, 9, 2, 4, 8, 5, 6],
   [9, 0, 1, 5, 3, 7, 2, 1, 4],
   [2, 8, 7, 4, 1, 9, 6, 3, 5],
   [3, 0, 0, 4, 8, 1, 1, 7, 9]] => 'Try again!'

Data:
  Arrays

Algorithm:
  - Return 'Try again!' if any array in input includes 0
  - initialize test_collections as input duplicate
  - Add column collections to test_collections
    - transpose input and append collection
  - Add region collections to test_collections
    - initialize regions as 3 element array, each element containing 3 rows from
      board
    - Transpose rows
    - Combine 3 element rows into new 9 element collections
  - Test test_collections for completion
    - Iterate through collections, apply uniq, check length == 9
    - Return 'Finished!' if all return true
    - Return 'Try again!' if any fail

=end

def done_or_not(board)
  return 'Try again!' unless board.select { |row| row.any?(0) }.empty?

  regions = board.each_slice(3).map(&:transpose).flatten.each_slice(9).to_a

  test_collections = board + board.transpose + regions
  finished = test_collections.all? { |zone| zone.uniq.length == 9 }

  return 'Try again!' unless finished
  'Finished!'
end

p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
               [6, 7, 2, 1, 9, 5, 3, 4, 8],
               [1, 9, 8, 3, 4, 2, 5, 6, 7],
               [8, 5, 9, 7, 6, 1, 4, 2, 3],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 6, 1, 5, 3, 7, 2, 8, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [3, 4, 5, 2, 8, 6, 1, 7, 9]]) == 'Finished!'

p done_or_not([[5, 3, 4, 6, 7, 8, 9, 1, 2],
               [6, 7, 2, 1, 9, 0, 3, 4, 9],
               [1, 0, 0, 3, 4, 2, 5, 6, 0],
               [8, 5, 9, 7, 6, 1, 0, 2, 0],
               [4, 2, 6, 8, 5, 3, 7, 9, 1],
               [7, 1, 3, 9, 2, 4, 8, 5, 6],
               [9, 0, 1, 5, 3, 7, 2, 1, 4],
               [2, 8, 7, 4, 1, 9, 6, 3, 5],
               [3, 0, 0, 4, 8, 1, 1, 7, 9]]) == 'Try again!'
