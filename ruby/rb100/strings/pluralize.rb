words = 'car human elephant airplane'
words_arr = words.split(' ')
words_arr.each { |word| word << ('s') }
puts words_arr
