=begin

Problem:
  Write a method that given an odd integer (n) displays an 8 pointed star in an
  n x n grid.

  Input: Integer
  Output: Display star

  Rules:
    Smallest integer is 7

Example:
  star(7)

  *  *  *
   * * *
    ***
  *******
    ***
   * * *
  *  *  *

Data:
  integer, string, array

Algorithm:
  Notes: The center row has the input number of stars
         Each row off center has the row number minus 1 spaces between stars
  - set rows variable to input divided by 2
  - initialize storage array
  - iterate rows times
    - construct row (offset from center) and prepend to storage array
  - append the center row to storage array
  - append a reversed collection of qty row elements to storage array
  - output storage array using each and center

=end

def star(n)
  rows = n / 2
  star_array = []

  rows.times do |row|
    spaces = ' ' * row
    star_array.prepend('*' + spaces + '*' + spaces + '*')
  end

  star_array << '*' * n
  star_array = star_array + star_array[0...rows].reverse

  star_array.each do |row|
    puts row.center(n)
  end
end

star(7)
star(9)
