# Original Solution
# puts ">> Do you want me to print something? (y/n)"
#
# loop do
#   ans = gets.chomp.downcase
#   if ans == 'yes' || ans == 'y'
#     puts "something"
#     break
#   elsif ans == 'no' || ans == 'n'
#     break
#   else
#     puts ">> Invalid input! Please enter y or n"
#   end
# end

# LS solution practice
ans = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  ans = gets.chomp.downcase
  break if %w(y n yes no).include?(ans)
  puts ">> Invalid input! Please enter y or n"
end
puts "something" if ans == 'yes' || ans == 'y'
