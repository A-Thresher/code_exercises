def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle_word(str)
  return 'Input is not a string' unless str.is_a?(String)
  return 'Input is an empty string' if str.empty?

  string_array = str.split
  middle_index = (string_array.size / 2.0).round
  string_array[middle_index - 1]
end

p middle_word('')
p middle_word(12)
p middle_word('Launch School is great!')
p middle_word('One')
p middle_word('Mark this exercise as complete')
