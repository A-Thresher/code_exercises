loop do
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  number_of_lines = gets.chomp

  break if number_of_lines.casecmp('q') == 0

  number_of_lines = number_of_lines.to_i
  if number_of_lines < 3
    puts ">> That's not enough lines."
    next
  else
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  end
end
