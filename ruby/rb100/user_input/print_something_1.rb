puts ">> Do you want me to print something? (y/n)"
ans = gets.chomp.downcase
puts "something" if ans == 'yes' || ans == 'y'
