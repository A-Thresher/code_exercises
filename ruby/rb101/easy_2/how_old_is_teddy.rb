puts ">> Hey, what's your name?"
name = gets.chomp

name = 'Teddy' if name.length == 0

puts "#{name} is #{rand(20..200)} years old!"
