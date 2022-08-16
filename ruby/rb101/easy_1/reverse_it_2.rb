def reverse_words(string)
  string_array = string.split
  string_array.map! { |word| 
    if word.length >= 5
      word.reverse
    else 
      word
    end
  }
  string_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
puts reverse_words('')
