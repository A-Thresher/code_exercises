ENTRIES = %w(1st 2nd 3rd 4th 5th)
numbers = []
i = 0

while numbers.length < 5
  puts("==> Enter the #{ENTRIES[i]} number:")
  numbers << gets.chomp.to_i

  i += 1
end

puts("==> Enter the last number:")
final_num = gets.chomp.to_i

if numbers.include?(final_num)
  puts("The number #{final_num} appears in #{numbers}.")
else
  puts("The number #{final_num} does not appear in #{numbers}.")
end
