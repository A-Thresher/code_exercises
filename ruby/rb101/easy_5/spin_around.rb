def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

puts spin_me("hello world") # "olleh dlrow"

=begin
The returned string will be a different object. When it is .split an array is
created of the separated words. Each word is then modified using .reverse!
which mutates the array, not the original string. Those words are then joined.
=end
