=begin

Problem:
  Write a method that returns a greeting that uses a person's full name (from
  array argument) and mentions their title and occupation (from hash argument)

  Input: Array, Hash
  Output: Printed string

  Rules:
    - Array contains 2 or more elements that combine with spaces to form a name
    - Hash contains :title and :occupation keys and associated values
    - method return doesn't matter, print output to terminal

Examples:
  greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
  => Hello, John Q Doe! Nice to have a Master Plumber around.

Data:
  Array, Hash, String

Algorithm:
  - Join name array into single space separated string
  - Print string using interpolation

=end

def greetings(name_arr, position)
  name = name_arr.join(' ')
  puts "Hello, #{name}! Nice to have a #{position[:title]} " + \
       "#{position[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
