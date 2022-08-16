# Because number is a string, needs .to_i

def multiply_by_five(n)
  n * 5
end

puts "Hello? Which number would you like to multiply by 5?"
number = gets.chomp  # .to_i here

puts "The result is #{multiply_by_five(number)}!"
