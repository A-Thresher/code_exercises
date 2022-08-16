def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

puts 't'.ord.chr == 't'
puts 'test'.ord.chr == 't' # .ord only returns the ascii value of the first char
