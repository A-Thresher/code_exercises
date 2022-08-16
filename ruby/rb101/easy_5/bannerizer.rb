def print_in_box(string)
  width = string.length + 2
  outer = '+' + ('-' * width) + "+\n"
  inner = '|' + (' ' * width) + "|\n"
  string = '| ' + string + " |\n"
  puts outer + inner + string + inner + outer
end

def print_in_box2(string)
  string.length <= 76 ? width = string.length + 2 : width = 78
  separate_strings = []

  ((string.length / 76) + 1).times do |i|
    separate_strings[i] = string.slice!(0..75)
  end

  separate_strings[-1] = separate_strings[-1].center(76)

  outer = '+' + ('-' * width) + "+\n"
  inner = '|' + (' ' * width) + "|\n"
  strings = separate_strings.map! { |str| '| ' + str + " |\n" }.join

  puts outer + inner + strings + inner + outer
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
print_in_box2("To boldly take this string past the restricted eighty " \
              "character mark unlike any string before it")
print_in_box2("This is the real test. Modify this method so it will " \
              "truncate the message if it will be too wide to fit inside " \
              "a standard terminal window (80 columns, including the sides " \
              "of the box). For a real challenge, try word wrapping very " \
              "long messages so they appear on multiple lines, but still " \
              "within a box.")
