=begin

https://www.codewars.com/kata/5808ff71c7cfa1c6aa00006d/train/ruby

In this kata, you've to count lowercase letters in a given string and return the
letter count in a hash with 'letter' as key and count as 'value'. The key must
be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1,
                                :s=>1, :t=>2}

=end

=begin

Problem:
  Write a method that counts how many times each character in a word occurs.

  Input: string
  Output: hash

  Rules
  - Output must be hash
    - hash keys must be symbols
  - all input characters are lowercase
  - no zero value key/value pairs

Algorithm
  - initialize hash
  - iterate through string characters
    - if symbol matching character exists, add 1 to value
    - if symbol matching character doesn't exist, assign new key to value 1
  - return hash

=end

def letter_count(str)
  count = {}

  str.each_char do |char|
    char_sym = char.to_sym
    count.key?(char_sym) ? count[char_sym] += 1 : count[char_sym] = 1
  end

  count
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1,
                               :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1,
                                  :r=>1, :s=>1, :t=>2}

