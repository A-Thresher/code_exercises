def crunch(string)
  new_string = ''
  string.each_char { |char| new_string << char unless new_string[-1] == char }
  new_string
end

def crunch2(string)
  string.gsub(/(.)\1+/, '\1')
end

puts crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch2('4444abcabccba') == '4abcabcba'
puts crunch2('ggggggggggggggg') == 'g'
puts crunch2('a') == 'a'
puts crunch2('') == ''

=begin
FE: If iteration is stopped when index is equal to text.length the last
    the last character will not be appended to the new string.

    Given that the solution 'checks forward' each_char and chars would
    not return the last letter just like if iteration was stopped above. My
    solution checks the end of the new string instead.
=end
