input_num = 0
operator = ''

loop do
  puts("Please enter an integer greater than 0:")
  input_num = gets.chomp.to_i

  break if input_num > 0
  puts("Invalid number.")
end

loop do
  puts("Enter 's' to compute the sum, 'p' to compute the product.")
  operator = gets.chomp.downcase

  break if operator == 's' || operator == 'p'
  puts("Invalid operator.")
end

if operator == 's'
  sum = (1..input_num).inject(:+)
  puts("The sum of the integers between 1 and #{input_num} is #{sum}.")
else
  product = (1..input_num).inject(:*)
  puts("The product of the integers between 1 and #{input_num} is #{product}.")
end
