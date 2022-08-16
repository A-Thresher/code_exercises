def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

numbers = []

loop do
  puts ">> Please enter a positive or negative integer:"
  input = gets.chomp

  unless valid_number?(input)
    puts ">> Invalid input. Only non-zero integers are allowed"
    next
  end

  numbers << input.to_i
  if numbers.size == 2
    if numbers[0] * numbers[1] < 0
      result = numbers[0] + numbers[1]
      puts "#{numbers[0]} + #{numbers[1]} = #{result}"
      break
    else
      puts ">> Sorry. One integer must be positive, on must be negative."
      puts ">> Please start over."
      numbers = []
    end
  end
end
