def get_words(arr)
  arr.map do |req|
    print "Enter a #{req}: "
    gets.chomp
  end
end

required_words = %w(noun verb adjective adverb)

words = get_words(required_words)
puts "Do you #{words[1]} your #{words[2]} #{words[0]} #{words[3]}? " \
     "That's hilarious!"
