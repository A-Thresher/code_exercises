PW = 'SecreT'

loop do
  puts ">> Please enter your password:"
  input_pw = gets.chomp
  break if input_pw == PW
  puts ">> Invalid password!"
end

puts "Welcome!"
