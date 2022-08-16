=begin

3:29 - 3:40

Problem:
  Given an array of names, output the display text as shown in examples

  Input: Array
  Output: String

  Rules:
    empty array -> 'no one likes this'
    single element -> 'person likes this'
    2 & 3 elements -> ' person1, person2, and person3 like this
    >3 elements -> 'person1, person2, and (# remaining elements) others like this'
    arrays will contain strings

Examples:
  likes [] -- must be "no one likes this"
  likes ["Peter"] -- must be "Peter likes this"
  likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
  likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
  likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"

Data:
  Strings, arrays

Algorithm:
  - case statement using input array length
    - empty array -> 'no one likes this'
    - single element -> 'person likes this'
    - 2 & 3 elements -> ' person1, person2, and person3 like this
    - >3 elements -> 'person1, person2, and (# remaining elements) others like this'

=end

def likes(names)
  case names.length
  when 0 then "no one likes this"
  when 1 then "#{names[0]} likes this"
  when 2 then "#{names[0]} and #{names[1]} like this"
  when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else        "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end

p likes([]) == "no one likes this"
p likes(["Peter"]) == "Peter likes this"
p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
p likes(["Max", "John", "Mark"]) == "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"
