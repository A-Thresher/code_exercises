UN = 'user'
PW = 'SecreT'

loop do
  puts ">> Please enter user name:"
  input_un = gets.chomp
  puts ">> Please enter your password:"
  input_pw = gets.chomp
  break if input_un == UN && input_pw == PW
  puts "Authorization failed!"
end

puts "Welcome!"
