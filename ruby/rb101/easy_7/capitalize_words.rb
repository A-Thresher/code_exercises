def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

def word_cap2(str)
  new_str = str.downcase.split.each do |word|
    word[0] = word.chr.upcase
  end.join(' ')
end

def word_cap3(str)

end

puts word_cap2('four score and seven') == 'Four Score And Seven'
puts word_cap2('the javaScript language') == 'The Javascript Language'
puts word_cap2('this is a "quoted" word') == 'This Is A "quoted" Word'
