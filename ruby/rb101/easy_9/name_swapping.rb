=begin

Problem:
  Write a method that takes a name str and reorganizes it as shown in Examples

  Input: String
  Output: String

  Rules:
    - All names are passed in the same format, first and last only, single space

Examples:
  swap_name('Joe Roberts') == 'Roberts, Joe'

Data:
  String, Array

Algorithm:
  - Split the name into an array containing first and last name
  - Return interpolated string in 'last, first' format

=end

def swap_name(str)
  name_arr = str.split
  "#{name_arr[1]}, #{name_arr[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
