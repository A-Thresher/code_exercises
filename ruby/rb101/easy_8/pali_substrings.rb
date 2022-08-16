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

def palindromes(str)
  all_substrings = substrings(str)
  all_substrings.select { |str| str == str.reverse && str.size > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Depending on what is meant by 'ignore' in further exploration the .select
# block can be modified to remove case and non-alphanumerics from consideration
