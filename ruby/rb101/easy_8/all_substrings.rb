def leading_substrings(str)
  subs_array = []
  current_str = ''

  str.each_char do |char|
    current_str += char
    subs_array << current_str
  end

  subs_array.sort
end

def substrings(str)
  substrings = []

  until str.empty?
    substrings << leading_substrings(str)
    str.slice!(0)
  end

  substrings.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
