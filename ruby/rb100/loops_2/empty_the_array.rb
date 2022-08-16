names = %w(Sally Joe Lisa Henry)

loop do
  puts names.shift      # names.pop to print from last to first
  break if names.empty?
end
