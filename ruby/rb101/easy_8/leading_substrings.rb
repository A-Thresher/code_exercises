def leading_substrings(str)
  subs_array = []
  current_str = ''

  str.each_char do |char|
    current_str += char
    subs_array << current_str
  end

  subs_array.sort
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
